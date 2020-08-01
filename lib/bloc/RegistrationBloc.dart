import 'package:flutter_auth/repositories/Repositories.dart';
import 'package:rxdart/rxdart.dart';

class RegistrationBloc 
{
  final repository = Repositories();

  final name = BehaviorSubject<String>();
  final email = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();

  Function get getName => name.sink.add;
  Function get getEmail => email.sink.add;
  Function get getPassword => password.sink.add;

  Future<String> registerUser()
  {
    return repository.registerUser(name.value, email.value, password.value);
  }

  void dispose()
  {
    name.close();
    email.close();
    password.close();
  }
}
final registrationBloc = RegistrationBloc();