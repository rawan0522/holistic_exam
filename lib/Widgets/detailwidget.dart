import 'package:flutter/material.dart';
class Detailwidget extends StatelessWidget {
   Detailwidget({super.key , required this.name , required this.img , required this.descrebtion});
  var img;
  String name;
  String descrebtion;
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(img ,  width: 140,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name , style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(descrebtion , style: TextStyle(fontSize: 15),),
          ),
        ],
      ),
    );
  }
}
