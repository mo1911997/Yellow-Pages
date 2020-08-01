import 'dart:convert';

import 'package:flutter_auth/models/FavouritesModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FavouritesBloc 
{
  final storage = FlutterSecureStorage();
  getFavourites() async
  {
    List<FavouritesModel> list = [];
    list = json.decode(await storage.read(key:"categories"));
    return list;
  }
}

final favouritesBloc = FavouritesBloc();