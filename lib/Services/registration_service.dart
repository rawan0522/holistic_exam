import 'package:dio/dio.dart';
import 'package:untitled/Models/registration_model.dart';

class RegistrationService{
  static Dio dio = Dio();
  static Future<RegistrationModel>login({required String email , required String password})async{
    String url = "https://elsewedyteam.runasp.net/api/Login/CheckUser";
    var response =await dio.post(url , data: {
      "Email":email,
      "password":password
    });
    if(response.statusCode == 200){
      return RegistrationModel.fromjson(response.data);
    }
    else{
      throw Exception("Try Again");
    }
  }

  static Future<RegistrationModel>signup({required String email , required String password,required String phone , required String name})async{
    String url = "https://elsewedyteam.runasp.net/api/Register/AddUser";
    var response = await dio.post(url , data: {
      "Name":name,
      "Phone":phone,
      "Email":email,
      "password":password
    });
    if(response.statusCode == 200){
      return RegistrationModel.fromjson(response.data);
    }
    else{
      throw Exception("Try Again");
    }
  }
}