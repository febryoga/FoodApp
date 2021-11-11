// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food/makanan/detailMakanan.dart';
import 'package:food/model/modelFood.dart';

import '../model/model_api.dart';

class ListMakanan extends StatefulWidget {
  const ListMakanan({Key? key}) : super(key: key);

  @override
  _ListMakananState createState() => _ListMakananState();
}

class _ListMakananState extends State<ListMakanan> {
  List<ModelFood> listDistri = [];
  Repository repository = Repository();

  getData() async {
    listDistri = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
            style: TextStyle(fontFamily: "MontserratSemi", fontSize: 15),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Row(children: <Widget>[
                          IconButton(
                            icon: Image.asset('assets/burger.png'),
                            iconSize: 125,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailMakanan(
                                          value: listDistri[index])));
                            },
                          ),
                          SizedBox(
                            height: 50,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailMakanan(
                                              value: listDistri[index])));
                                },
                                child: Text(
                                 listDistri[index].nama,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "MontserratSemi",
                                      fontSize: 15),
                                )),
                          )
                        ]),
                      ),
                    ],
                  )

                  // Column(
                  //   mainAxisSize: MainAxisSize.min,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: <Widget>[
                  //     ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Colors.white, // background
                  //         onPrimary: Colors.white, // foreground
                  //       ),
                  //       child: Row(children: <Widget>[
                  //         Text(
                  //           listDistri[index].nama,
                  //           textAlign: TextAlign.center,
                  //           style: TextStyle(
                  //               fontSize: 10,
                  //               fontFamily: "MontserratSemi",
                  //               color: Colors.black),
                  //         )
                  //       ]),
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) =>
                  //                     DetailMakanan(value: listDistri[index])));
                  //       },
                  //     ),
                  //   ],
                  // ),

                  //Text(listDistri[index].provinsi),
                  );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 1,
              );
            },
            itemCount: listDistri.length));
  }
}
