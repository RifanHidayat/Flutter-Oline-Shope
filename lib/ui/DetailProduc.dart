import 'package:ecommerce/API/url.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  DetailPage({this.nama,this.deskrisi, this.harga, this.jenis,this.kategori});

  final String nama,kategori,harga,deskrisi,jenis;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 250.0,
              child: new Hero(
                tag: widget.nama,
                child: new Material(
                  child: new InkWell(

                    child: Image.network(
                      "http://$ip/webservice_shope/assets/${widget.nama}.jpg",
                      height: 120,
                      width: 200,

                    ),
                  ),
                ),
              )),
          new PartNameHarga(
            nama: "${widget.nama}",
            harga: "${widget.harga}",
          ),

          new Deskripsi(
            deskripsi: widget.deskrisi,
          ),
          new btnBuy()
        ],
      ),
    );
  }
}



class PartNameHarga extends StatelessWidget {
  PartNameHarga({this.nama,this.harga});
  final String nama,harga;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  harga,
                  style: new TextStyle(fontSize: 20.0, color: Colors.black54),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class Deskripsi extends StatelessWidget {
  Deskripsi({this.deskripsi});
  final String deskripsi;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
        padding: new EdgeInsets.all(10.0),


        child: new Card(

          child: new Padding(

            padding: const EdgeInsets.all(15.0),
            child: Row(

              children: <Widget>[

             Flexible(
               fit: FlexFit.loose,
                 child:Container(

                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "Deskripsi",
                        style: new TextStyle(fontSize: 18.0,
                            color: Colors.black
                        ),

                      ),
                      new Text(
                        "$deskripsi",
                        style: new TextStyle(fontSize: 14.0,
                            color: Colors.black54
                        ),

                      ),


                    ],
                  ),
                )

             )

              ],
            ),

          ),
        ),
      ),
    );
  }
}

class btnBuy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
        padding: new EdgeInsets.all(10.0),



          child: new Padding(

            padding: const EdgeInsets.all(15.0),
            child: Row(

              children: <Widget>[

                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 100,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new RaisedButton(
                          child: new Text("Pesan",
                              style: TextStyle(color: Colors.white)
                          ),

                          color: Colors.blue,
                          onPressed: (){
                            //nothiing
                          },

                        )

                      ],
                    ),
                  ),
                )
              ],
            ),

          ),

      ),
    );
  }
}