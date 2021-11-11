// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers, file_names, unnecessary_string_interpolations, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food/blocs/counter.dart';
import 'package:food/model/modelFood.dart';

class DetailMakanan extends StatefulWidget {
  final ModelFood value;
  const DetailMakanan({required this.value, Key? key}) : super(key: key);

  @override
  State<DetailMakanan> createState() => _DetailMakananState();
}

class _DetailMakananState extends State<DetailMakanan> {
  CounterBloc bloc = CounterBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "${widget.value.nama}",
            style: TextStyle(fontFamily: "MontserratSemi", fontSize: 15),
          ),
          backgroundColor: Color.fromARGB(255, 234, 33, 39),
        ),
        body: Container(
            color: Color.fromARGB(450, 245, 244, 244),
            //padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                  // width: 400,
                  // child: Image(
                  //   image: AssetImage("assets/images/Distributor/${value.image}"),
                  // ),
                  ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Card(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Text(
                            "Nama Makanan ",
                            style: TextStyle(
                                fontFamily: "MontserratSemi",
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 10, bottom: 10),
                          child: Text(
                            "${widget.value.nama}",
                            style: TextStyle(
                                fontFamily: "MontserratRegular",
                                fontSize: 13,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Text(
                            "Kategori Makanan ",
                            style: TextStyle(
                                fontFamily: "MontserratSemi",
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 10, bottom: 10),
                          child: Text(
                            "${widget.value.kategori}",
                            style: TextStyle(
                                fontFamily: "MontserratRegular",
                                fontSize: 13,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Text(
                            "Bahan Utama ",
                            style: TextStyle(
                                fontFamily: "MontserratSemi",
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 10, bottom: 10),
                          child: Text(
                            "${widget.value.utama}",
                            style: TextStyle(
                                fontFamily: "MontserratRegular",
                                fontSize: 13,
                                color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            child: StreamBuilder(
                              stream: bloc.output,
                              initialData: bloc.counter,
                              builder: (context, snapshot) => Text(
                                "Total Pesan : ${snapshot.data}   ",
                                style: TextStyle(
                                    fontFamily: "MontserratSemi",
                                    fontSize: 15,
                                    color: Colors.black),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {
                                      bloc.inputan.add('minus');
                                    },
                                    icon: Icon(Icons.remove)),
                                IconButton(
                                    onPressed: () {
                                      bloc.inputan.add('add');
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )),
                      ])))
            ])));
  }
}
