import 'package:ecommerce/TextStyle/constants.dart';
import 'package:ecommerce/ui/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


// ignore: must_be_immutable
class AkunScreen extends StatefulWidget {

  @override
  _AkunScreenPageState createState() => _AkunScreenPageState();
}

class _AkunScreenPageState extends State<AkunScreen> {
  String username,email,telp,firts_name,last_name;
  int value;
  getDataPref() async {
    SharedPreferences sharedPreferences = await
    SharedPreferences.getInstance();
    setState(() {
      value = sharedPreferences.getInt("value");
      firts_name=sharedPreferences.getString("firts_name");
      last_name=sharedPreferences.getString("last_name");
      username=sharedPreferences.getString("username");
      email=sharedPreferences.getString("email");
      telp=sharedPreferences.getString("telp");
    });
  }
  @override
  void initState() {
    getDataPref();
    super.initState();
  }
  logout() async {
    SharedPreferences sharedPreferences = await
    SharedPreferences.getInstance();
    setState(() {
      sharedPreferences.clear();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
        ModalRoute.withName('/BottomBarMenu'),
      );


    });
  }
  void alert() {
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(

            content: new Text(

                "yakin mau keluar dari aplikasi ini?"), actions: <Widget>[

            new RaisedButton(
                child: new Text(
                  'Iya',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                  logout();

                }),
            FlatButton(
                child: new Text(
                  'Batalkan',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pop(context);

                }
            ),
          ],
          );

        }
    );
  }
  Widget _buildLogout() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 20),
      width: double.infinity,
      child: RaisedButton(

        elevation: 5.0,
        onPressed: ()  {
          alert();

        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        child: Text(
          'Logout',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 100.0,
              child: new Hero(
                tag: "nama",
                child: new Material(
                  child: new InkWell(

                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.redAccent[100],
                      child: Column(
                        children: <Widget>[
                          Text("$firts_name $last_name",
                            style: textNama,

                          )
                        ],
                      ),

                    ),
                  ),
                ),
              )),
            new Username(
              username: username,
            ),
          new Email(
            email: email,
          ),
          new Telp(
            telp: telp,
          ),
          _buildLogout()

        ],
      ),
    );
  }
}
class Username extends StatelessWidget {
  Username({this.username});
  final String username;

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
                new Icon(Icons.person,
                  color: Colors.blue,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "$username",
                        style: new TextStyle(fontSize: 18.0,
                            color: Colors.black
                        ),

                      ),
                      new Text(
                        "username",
                        style: new TextStyle(fontSize: 15.0,
                            color: Colors.black54
                        ),

                      ),
                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
class Email extends StatelessWidget {
  Email({this.email});
  final String email;

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
                new Icon(Icons.email,
                  color: Colors.blue,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "$email",
                        style: new TextStyle(fontSize: 18.0,
                            color: Colors.black
                        ),

                      ),
                      new Text(
                        "E-mail",
                        style: new TextStyle(fontSize: 15.0,
                            color: Colors.black54
                        ),

                      ),
                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}



class Telp  extends StatelessWidget {
  Telp({this.telp});
  final String telp;

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
                new Icon(Icons.phone,
                  color: Colors.blue,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "$telp",
                        style: new TextStyle(fontSize: 18.0,
                            color: Colors.black
                        ),

                      ),
                      new Text(
                        "Telp",
                        style: new TextStyle(fontSize: 15.0,
                            color: Colors.black54
                        ),

                      ),
                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
class btnLogout  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 10),
      width: double.infinity,
      child: RaisedButton(

        elevation: 5.0,
        onPressed: ()  {


        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        child: Text(
          'Logout',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}


