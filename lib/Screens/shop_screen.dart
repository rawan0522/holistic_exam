import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/shop_provider.dart';
import 'package:untitled/Widgets/shopwidget.dart';
class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text("Products", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ),),
        centerTitle: true,
      ),
      body: Consumer<ShopProvider>(
        builder: (context, provider, child){
          final newProvider = provider.shopModel?.data;
          if(newProvider == null){
            provider.home();
            return Center(child: CircularProgressIndicator(),);
          }else{

            return GridView.builder(
              itemCount: newProvider.length,
              itemBuilder:(context, index) {
                return Shopwidget(
                    img: provider.shopModel?.data[index]["image"],
                    price: provider.shopModel?.data[index]["price"],
                    name:provider.shopModel?.data[index]["name"],
                );
              } ,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2 ,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),

            );
          }
        },
      ),
    );  }
  }

