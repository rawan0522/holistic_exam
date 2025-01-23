import 'package:flutter/material.dart';
class Categorywidget extends StatelessWidget {
   Categorywidget({super.key , required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name0 , style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
