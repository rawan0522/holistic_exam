
import 'package:flutter/cupertino.dart';
import 'package:untitled/Models/shop_model.dart';
import 'package:untitled/Services/shop_service.dart';

class ShopProvider extends ChangeNotifier{
  ShopModel? shopModel;

  Future<void>home()async{
    shopModel =  await ShopService.home();
    notifyListeners();
  }

  Future<void>categories()async{
    shopModel = await ShopService.categories();
    notifyListeners();
  }
}