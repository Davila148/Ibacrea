import 'package:flutter/material.dart';
import 'package:hola/src/features/store/models/category.dart';


class CategoryWidget extends StatelessWidget{

  Category category;
  CategoryWidget(this.category);


  @override 
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 60),
      color: Color.fromARGB(255, 244, 244, 244),
      child: Text(
        category.name,
        textAlign: TextAlign.left, 
        style: TextStyle(color:Colors.grey, fontSize: 20), 
        )
        );
  }
}