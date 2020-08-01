import 'package:flutter_auth/utilities/constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
class ApiProvider
{
  final storage = FlutterSecureStorage();
  // API for login 
  Future<String> checkLogin(String email,String password) async
  {
    try 
    {
      print(email);
      print(password);
      
      http.Response response = await http.post(
        BASE_URL+"users/login",
        body: {
          'email':email,
          'password':password
        }
      );
      print(response.body);
      if(response.statusCode == 200)
      {
        return '';
      }
      else 
      {
        return '';
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }

  //API for registering user 
  Future<String> registerUSer(String name,String email,String password) async
  {
    try 
    {
      print(name);
      print(email);
      print(password);

      http.Response response = await http.post(
        BASE_URL + "users/register",
        body : {
          'name':name,
          'email':email,
          'password':password
        }
      );
      print(response.body);
      if(response.statusCode == 200 )
      {
        return 'success';
      }
      else 
      {
        return '';
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }
  Future<List> getCommunitiesAndCategories() async
  {
    try 
    {
      if(await storage.read(key: "communities") == null || await storage.read(key: "categories") == null)
      {
        var token = await storage.read(key: "token");
        http.Response response = await http.get( 
          BASE_URL+"",
          headers: {
            'Authorization': 'Bearer '+token
          }
        );
        print(response.body);
        if(response.statusCode == 200)
        {
          
        }
        else 
        {

        }
      }
      else 
      {
        
      }      
    }
    catch(err)
    {
      print(err.toString());
    }
  }

  //API for changing password ( get user email )
  Future<String> getUserEmailChangePassword(String email) async
  {
    try 
    {
      http.Response response = await http.post(
        BASE_URL+"",
        body: {
          'email': email
        }
      );
      print(response.body);
      if(response.statusCode == 200)
      {

      }
      else
      {
        
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }

  //API for changing password ( verify code )
  Future<String> verifyCodeChangePassword(String email,String code) async
  {
    try 
    {
      http.Response response = await http.post(
        BASE_URL+"",
        body: {
          'email': email,
          'code': code
        }
      );
      print(response.body);
      if(response.statusCode == 200)
      {
        
      }
      else
      {
        
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }

  //API for changing password ( get user email )
  Future<String> changePassword(String email,String password) async
  {
    try 
    {
      http.Response response = await http.post(
        BASE_URL+"",
        body: {
          'email': email,
          'password': password
        }
      );
      print(response.body);
      if(response.statusCode == 200)
      {
        
      }
      else
      {
        
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }
  
  //get businesses in the near by location 
  Future<List> getBusinessesList(category,latitude,longitude)
  {
    try 
    {
      print(category);
      print(latitude);
      print(longitude);
    }
    catch(err)
    {
      print(err.toString());
    }
  }

  //verify email 
  Future<String> verifyEmail(email,code) async
  {
    try 
    {
      print(email);
      print(code);
      http.Response response = await http.post(
        BASE_URL+'users/verify_user',
        body:{
          'email':email,
          'code':code
        }
      );
      print(response.body);
      if(response.statusCode == 200)
      {
        return 'success';
      }
      else 
      {
        return 'fail';
      }
    }
    catch(err)
    {
      print(err.toString());
    }
  }
}