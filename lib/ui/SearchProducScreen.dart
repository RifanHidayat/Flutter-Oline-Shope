import 'dart:convert';
import 'package:ecommerce/API/url.dart';
import 'package:ecommerce/modal/ModalAllProduc.dart';
import 'package:ecommerce/ui/DetailProduc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;




class SearchScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
Map data;
List producData = [];
var loading = false;

class _HomePageState extends State<SearchScreen> {

  List<Datum> _ModelList = List<Datum>();
  List<Datum> _ModelListTampil = List<Datum>();


  Future<List<Datum>> fetchNotes() async {
    setState(() {
      loading = true;
    });
    var url = apigetdata;
    var response = await http.get(url);
    data=jsonDecode(response.body);
    producData=data["data"];
    var producs = List<Datum>();


    setState(() {
      if (response.statusCode == 200) {
        var producsJson = producData;
        for (var producJson in producsJson) {
          producs.add(Datum.fromJson(producJson));
        }
      }
      loading=false;
    });
    return producs;

  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _ModelList.addAll(value);
        _ModelListTampil = _ModelList;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cari Produk'),
          backgroundColor:Colors.redAccent[100],
        ),
        body: Container(
          child: loading?(Center(child: CircularProgressIndicator(),) )
              : ListView.builder(
              itemBuilder: (context, index) {
                return index == 0 ?
                _searchBar() :
                _listItem(index-1);
              },
              itemCount: _ModelListTampil.length+1
          ),
        )
    );
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(

        decoration: InputDecoration(

            hintText: 'Search...'
        ),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            _ModelListTampil = _ModelList.where((note) {
              var noteTitle = note.nama.toLowerCase();
              return noteTitle.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItem(index) {
    return InkWell(
      onTap: ()=>
        Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new DetailPage(
            nama: producData[index]['nama'],
            deskrisi: producData[index]["deskripsi_panjang"],
            harga: producData[index]['harga'],
            jenis: producData[index]['jenis'],
            kategori: producData[index]["kategori"],
          ),
        )),


      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _ModelListTampil[index].nama,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black),
              ),

              Text(
                _ModelListTampil[index].harga,
                style: TextStyle(
                    color: Colors.grey.shade600
                ),
              ),
            ],
          ),
        ),


      ),

    );

  }
}

