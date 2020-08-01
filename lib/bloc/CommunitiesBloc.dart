import 'dart:convert';
import 'package:flutter_auth/models/CommunitiesModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CommunitiesBloc 
{
  final storage = FlutterSecureStorage();
  getCommunities() async
  {
    List<CommunitiesModel> list = [];
    list = json.decode(await storage.read(key:"communities"));
    return list;
  }
}

final communitiesBloc = CommunitiesBloc();