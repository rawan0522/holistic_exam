import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/shop_provider.dart';
import 'package:untitled/Widgets/detailwidget.dart';
class Shopdetail extends StatelessWidget {
  const Shopdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail", style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: Consumer<ShopProvider>(
        builder: (context, provider, child){
          final newProvider = provider.shopModel?.data;
          if(newProvider == null){
            provider.home();

            return Center(child: CircularProgressIndicator(),);
          }else{
            return ListView.builder(
               itemBuilder:(context, index) {
                return Detailwidget(
                    img: provider.shopModel?.data[index]["image"],
                    name: provider.shopModel?.data[index]["name"],
                    descrebtion: provider.shopModel?.data[index]["description"]
                );
               } ,
              itemCount:newProvider.length ,

            );}
        },
      ),
    );
  }
}
