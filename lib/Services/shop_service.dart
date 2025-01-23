import 'package:dio/dio.dart';
import 'package:untitled/Models/shop_model.dart';

class ShopService {
  static Dio dio = Dio();

  static Future<ShopModel> home() async {
    String url = "https://student.valuxapps.com/api/home";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      return ShopModel.fromjson(response.data);
    }
    else {
      throw Exception("Try Again");
    }
  }

  static Future<ShopModel> categories() async {
    String url = "https://student.valuxapps.com/api/categories";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      return ShopModel.fromjson(response.data);
    }
    else {
      throw Exception("Try Again");
    }
  }
}