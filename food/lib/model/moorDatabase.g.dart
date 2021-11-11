// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: annotate_overrides

part of 'moorDatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final String product;
  final int id;
  final String kategori;
  final String bahan;
  Product(
      {required this.product,
      required this.id,
      required this.kategori,
      required this.bahan});
  factory Product.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      product: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      kategori: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}kategori'])!,
      bahan: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bahan'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product'] = Variable<String>(product);
    map['id'] = Variable<int>(id);
    map['kategori'] = Variable<String>(kategori);
    map['bahan'] = Variable<String>(bahan);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      product: Value(product),
      id: Value(id),
      kategori: Value(kategori),
      bahan: Value(bahan),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Product(
      product: serializer.fromJson<String>(json['product']),
      id: serializer.fromJson<int>(json['id']),
      kategori: serializer.fromJson<String>(json['kategori']),
      bahan: serializer.fromJson<String>(json['bahan']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'product': serializer.toJson<String>(product),
      'id': serializer.toJson<int>(id),
      'kategori': serializer.toJson<String>(kategori),
      'bahan': serializer.toJson<String>(bahan),
    };
  }

  Product copyWith(
          {String? product, int? id, String? kategori, String? bahan}) =>
      Product(
        product: product ?? this.product,
        id: id ?? this.id,
        kategori: kategori ?? this.kategori,
        bahan: bahan ?? this.bahan,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('product: $product, ')
          ..write('id: $id, ')
          ..write('kategori: $kategori, ')
          ..write('bahan: $bahan')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(product, id, kategori, bahan);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.product == this.product &&
          other.id == this.id &&
          other.kategori == this.kategori &&
          other.bahan == this.bahan);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> product;
  final Value<int> id;
  final Value<String> kategori;
  final Value<String> bahan;
  const ProductsCompanion({
    this.product = const Value.absent(),
    this.id = const Value.absent(),
    this.kategori = const Value.absent(),
    this.bahan = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String product,
    this.id = const Value.absent(),
    required String kategori,
    required String bahan,
  })  : product = Value(product),
        kategori = Value(kategori),
        bahan = Value(bahan);
  static Insertable<Product> custom({
    Expression<String>? product,
    Expression<int>? id,
    Expression<String>? kategori,
    Expression<String>? bahan,
  }) {
    return RawValuesInsertable({
      if (product != null) 'product': product,
      if (id != null) 'id': id,
      if (kategori != null) 'kategori': kategori,
      if (bahan != null) 'bahan': bahan,
    });
  }

  ProductsCompanion copyWith(
      {Value<String>? product,
      Value<int>? id,
      Value<String>? kategori,
      Value<String>? bahan}) {
    return ProductsCompanion(
      product: product ?? this.product,
      id: id ?? this.id,
      kategori: kategori ?? this.kategori,
      bahan: bahan ?? this.bahan,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (product.present) {
      map['product'] = Variable<String>(product.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (kategori.present) {
      map['kategori'] = Variable<String>(kategori.value);
    }
    if (bahan.present) {
      map['bahan'] = Variable<String>(bahan.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('product: $product, ')
          ..write('id: $id, ')
          ..write('kategori: $kategori, ')
          ..write('bahan: $bahan')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _productMeta = const VerificationMeta('product');
  late final GeneratedColumn<String?> product = GeneratedColumn<String?>(
      'product', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _kategoriMeta = const VerificationMeta('kategori');
  late final GeneratedColumn<String?> kategori = GeneratedColumn<String?>(
      'kategori', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _bahanMeta = const VerificationMeta('bahan');
  late final GeneratedColumn<String?> bahan = GeneratedColumn<String?>(
      'bahan', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [product, id, kategori, bahan];
  @override
  String get aliasedName => _alias ?? 'products';
  @override
  String get actualTableName => 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product')) {
      context.handle(_productMeta,
          product.isAcceptableOrUnknown(data['product']!, _productMeta));
    } else if (isInserting) {
      context.missing(_productMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('kategori')) {
      context.handle(_kategoriMeta,
          kategori.isAcceptableOrUnknown(data['kategori']!, _kategoriMeta));
    } else if (isInserting) {
      context.missing(_kategoriMeta);
    }
    if (data.containsKey('bahan')) {
      context.handle(
          _bahanMeta, bahan.isAcceptableOrUnknown(data['bahan']!, _bahanMeta));
    } else if (isInserting) {
      context.missing(_bahanMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Product.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}
