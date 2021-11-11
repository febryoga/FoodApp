// ignore_for_file: file_names, annotate_overrides

import 'package:moor_flutter/moor_flutter.dart';
part 'moorDatabase.g.dart';

class Products extends Table {
  TextColumn get product => text()();
  IntColumn get id => integer().autoIncrement()();
  TextColumn get kategori => text()();
  TextColumn get bahan => text()();
}

@UseMoor(tables: [Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'dbmoor.sqlite', logStatements: true));

  int get schemaVersion => 1;
  Future<List<Product>> getAllProduct() => select(products).get();
  Stream<List<Product>> watchAllProduct() => select(products).watch();
  Future <int> insertNewProduct(String product, kategori, bahan) => into(products).insert(ProductsCompanion.insert(product: product, kategori: kategori,bahan: bahan));
  Future deleteNewProduct(Product product) => delete(products).delete(product);
}
