import 'package:flutter/material.dart';

import '../Screens/shopdetail.dart';
class Shopwidget extends StatelessWidget {
   Shopwidget({super.key , required this.img , required this.price , required this.name});
var img;
dynamic price;
String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(child: Image.network(img ,  width: 140,),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Shopdetail(),));
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name , style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("$price" , style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
