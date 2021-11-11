// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food/model/moorDatabase.dart';
import 'package:moor_flutter/moor_flutter.dart' as moor;

class ReqMenu extends StatefulWidget {
  const ReqMenu({Key? key}) : super(key: key);

  @override
  _ReqMenuState createState() => _ReqMenuState();
}

class _ReqMenuState extends State<ReqMenu> {
  TextEditingController product = TextEditingController();
  TextEditingController kategori = TextEditingController();
  TextEditingController bahan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 234, 33, 39),
        title: Text("Favorite Food"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Nama Makanan"),
                controller: product,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Kategori"),
                controller: kategori,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Bahan Utama"),
                controller: bahan,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:  Color.fromARGB(255, 234, 33, 39),
                ),
                  onPressed: () {
                    setState(() {
                      AppDatabase().insertNewProduct(
                          product.text, kategori.text, bahan.text);
                    });
                    product.clear();
                    kategori.clear();
                    bahan.clear();
                  },
                  child: Text("Request"))
            ],
          ),
        ),
        StreamBuilder(
            stream: AppDatabase().watchAllProduct(),
            builder: (context, AsyncSnapshot<List<Product>> snapshot) {
              return ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (_, index) {
                  return Container(
                   alignment: Alignment.center,
                   padding: EdgeInsets.only(left: 10,right: 10),
                   
                    child: Card(
                    child: ListTile(
                      title: Text('${snapshot.data![index].product}'),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            AppDatabase()
                                .deleteNewProduct(snapshot.data![index]);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ));
                  },
              );
            })
      ]),
    );
  }
}
