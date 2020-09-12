import 'dart:convert';

import 'package:ecommerce/API/url.dart';
import 'package:ecommerce/TextStyle/constants.dart';
import 'package:ecommerce/komponen/kategori.dart';
import 'package:ecommerce/ui/DetailProduc.dart';
import 'package:ecommerce/ui/SearchProducScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget{
  HomeScreen({this.kategori});

  final String kategori;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
   Map data;

   List producData = [];
  var loading = false;

  Map datadetail;
  dynamic producDataDetail;

  Future getData() async {
    setState(() {
      loading = true;
    });
    final response = await
    http.get(apigetdata);

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
    return Scaffold(
    appBar: AppBar(
    title: Text("Home"),
      backgroundColor:Colors.redAccent[100],
    ),
      body: Body()
    );
  }

}

  final GlobalKey<ScaffoldState> scaffoldState =
  new GlobalKey<ScaffoldState>();

  void showSnakeBar(scaffoldState, String _pesan) {
    scaffoldState.currentState.showSnackBar(
      new SnackBar(
        content: Text(_pesan),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      ),
    );
  }
class Body extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:5),
        child: Text(
          "Kategori",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      Categories(),
      Flexible(
        fit: FlexFit.loose,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
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
                             "${producData[index]["nama"]}",style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700),
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
      ),
    ],
  );
}
}


