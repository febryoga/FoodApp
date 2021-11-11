// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food/makanan/listMakanan.dart';
import 'package:food/moor/reqMenu.dart';
import 'package:food/splash.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_open, color: Colors.white),
            onPressed: () {},
          ),
          backgroundColor: Color.fromARGB(255, 234, 33, 39),
          title: Text(
            "Food Ala Kadarnya",
            style: TextStyle(fontFamily: "MontserratSemi",fontSize: 15),
          ),
        ),
      body: Container(
         color: Color.fromARGB(450, 245, 244, 244),
        child: ListView(
          // mainAxisSize: MainAxisSize.max,

          children: <Widget>[
            Container(
              width: 400,
              child: Image(
                image: AssetImage("assets/banner.jpg"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                
                  padding: EdgeInsets.all(10),
                  height: 58,
                  width: 340,
                  child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                               primary: Colors.white, // background
                              onPrimary: Colors.white, // foreground
                            ),
                    child: Row(children: <Widget>[
                      Icon(Icons.search_rounded, color: Colors.red),
                      Text(
                        "   Find Food",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "MontserratSemi",
                            color: Colors.red),
                      )
                    ]),
                    onPressed: () {
                   Fluttertoast.showToast(
                          msg: "Cooming Soon!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                   
                    // height: 100,
                    // width: 170,
                    child: 
                     TextButton.icon( 
                      
                      icon: Icon(Icons.fastfood_outlined),
                      label: Text("Menu"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListMakanan()),
                        );
                      },
                    )),
                
                Card(
                   
                    // height: 100,
                    // width: 170,
                    child:   TextButton.icon( 
                      
                      icon: Icon(Icons.insert_comment),
                      label: Text("favorite"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ReqMenu()),
                        );
                      },
                    )),
              ],
            ),
           
          
            
          ],
          
        ),
      ),

    );
  }
}