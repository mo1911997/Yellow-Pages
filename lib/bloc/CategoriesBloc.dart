import 'dart:convert';
import 'package:flutter_auth/models/CategoriesModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CategoriesBloc 
{
  final storage = FlutterSecureStorage();
  getCategories() async 
  {
    List<CategoriesModel> list = [];
    list = json.decode(await storage.read(key: "categories"));
    return list;
  }
}

final categoriesBloc = CategoriesBloc();