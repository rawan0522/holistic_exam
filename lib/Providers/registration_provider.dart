import 'package:flutter/cupertino.dart';
import 'package:untitled/Models/registration_model.dart';
import 'package:untitled/Services/registration_service.dart';

class REgistrationProvider extends ChangeNotifier{
  RegistrationModel? registrationModel;

  Future<void>login({required String email , required String password})async{
    registrationModel =  await RegistrationService.login(email: email, password: password);
    notifyListeners();
  }

  Future<void>signup({required String email , required String password,required String phone , required String name})async{
    registrationModel = await RegistrationService.signup(email: email, password: password, phone: phone, name: name);
    notifyListeners();
  }
}