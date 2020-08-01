import 'package:flutter_auth/repositories/Repositories.dart';
import 'package:rxdart/rxdart.dart';

class MainPageBloc 
{
  final respository = Repositories();
  final category = BehaviorSubject<String>();
  final latitude = BehaviorSubject<double>();
  final longitude = BehaviorSubject<double>();

  Function get getCategory => category.sink.add;
  Function get getLatitude => latitude.sink.add;
  Function get getLongitude => longitude.sink.add;

  Future<List> getBusinessesList()
  {
    return respository.getBusinessesList(category.value,latitude.value,longitude.value);
  }
  void dispose()
  {
    category.close();
    latitude.close();
    longitude.close();
  }
}

final mainPageBLoc = MainPageBloc();