import 'package:flutter_auth/models/CommunitiesModel.dart';
import 'package:flutter_auth/providers/ApiProvider.dart';

class Repositories 
{
  final apiProvider = ApiProvider();
  // login
  Future<String> checkLogin(email,password) => apiProvider.checkLogin(email, password);

  //registration 
  Future<String> registerUser(name,email,password) => apiProvider.registerUSer(name, email, password);

  //change password( get user email )
  Future<String> getUserEmail(email) => apiProvider.getUserEmailChangePassword(email);

  //change password( verify code )
  Future<String> verifyCode(email,code) => apiProvider.verifyCodeChangePassword(email,code);

  //change password( get user email )
  Future<String> changePassword(email,password) => apiProvider.changePassword(email,password);

  //get businesses list 
  Future<List> getBusinessesList(category,latitude,longitude) => apiProvider.getBusinessesList(category, latitude, longitude);

}