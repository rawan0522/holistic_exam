class ShopModel{
  List<dynamic>data;
  ShopModel({required this.data});
  factory ShopModel.fromjson(Map<String , dynamic>json){
    return ShopModel(data:json["data"]["products"]);
  }}

