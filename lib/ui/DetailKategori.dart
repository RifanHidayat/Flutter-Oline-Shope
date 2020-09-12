import 'package:ecommerce/API/url.dart';
import 'package:ecommerce/ui/DetailProduc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';
class KategoriScreen extends StatefulWidget {
  KategoriScreen({this.kategori});

  final String kategori;
  @override
  _kategoriScreenState createState() => _kategoriScreenState();
}

class _kategoriScreenState extends State<KategoriScreen> {
  Map data;
  String aksi;

  List producData = [];
  var loading = false;


  Map datadetail;
  dynamic producDataDetail;
  Future getData() async {
    setState(() {
      loading = true;
    });
    if (widget.kategori=="All"){
      aksi=apigetdata;
    }else{
      aksi=apigetkategori;

    }
    final response = await
    http.post(aksi, body: {
      "kategori": widget.kategori,

    });

    data = jsonDecode(response.body);
    print(data);
    setState(() {
      producData = data["data"];
      //untuk menampilkan di concole
      print(producData);
      loading = false;
    });
  }
  @override
  void initState() {
    super.initState();
    getData();

  }

  @override
  Widget build(BuildContext context) {
//    getDataDetail(userDataDetail);
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor:Colors.redAccent[100],
        title: new Text(
          widget.kategori,
          style: new TextStyle(color: Colors.white),
        ),
      ),

      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.8),
          itemCount: producData == null ? 0 : producData.length,
          itemBuilder: (BuildContext context, int index) {
            //getDataDetail(userDataDetail);

            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new Hero(
                      tag: producData[index]['nama'],
                      child: new Material(
                        child: new InkWell(
                          onTap: () =>
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new DetailPage(
                                  nama: producData[index]['nama'],
                                  deskrisi: producData[index]["deskripsi_panjang"],
                                  harga: producData[index]['harga'],
                                  jenis: producData[index]['jenis'],
                                  kategori: producData[index]["kategori"],
                                ),
                              )),
                          child: Image.network(
                            "http://$ip/webservice_shope/assets/${producData[index]["nama"]}.jpg",
                            height: 125.0,
                            width: 125.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Expanded(

                      child: Column(
                        children: <Widget>[
                          new Text(
                            "${producData[index]["nama"]}",style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
                          ),
                          new Text(
                            "${producData[index]["harga"]}",style: TextStyle(fontSize: 10.0),
                          ),


                        ],
                      ),
                    )

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}