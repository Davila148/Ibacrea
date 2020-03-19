import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hola/src/features/store/models/product.dart';
import 'package:hola/src/features/store/ui/screen/finished_buy.dart';
import 'package:intl/intl.dart';

class ConfirmProductPurchase extends StatelessWidget{

  Product product;
  ConfirmProductPurchase(this.product);

  String formatPrice(double price){
    final formatCurrency = new NumberFormat.simpleCurrency();
    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromARGB(255, 8, 1, 35),
          title: Text('IBACREA'),
      ),
      body: Container(
        margin: new EdgeInsets.only(bottom:20.0,top:100.0),
        child: ListView(
          children: <Widget>[
            Image.network(product.imageUrl,height: 200,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autocorrect: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon:
                        /*new Padding(
                          padding: const EdgeInsets.only(left: 200,),
                          child: new SizedBox(
                                    height: 4,
                                    child: Icon(Icons.add),
                          ),
                        ),*/
                        Icon(Icons.add),
                      border: InputBorder.none,
                      hintText: 'Nombre'
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autocorrect: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.home),
                      border: InputBorder.none,
                      hintText: 'Direccion'
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    
                    autocorrect: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,     
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      hintText: 'Celular',
                      //hintStyle: TextStyle(color: Colors.black,fontSize: 50,),
                      fillColor: Colors.green,
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(product.discountPrice!=null ? "${formatPrice(product.discountPrice)}":"",style: TextStyle(fontSize: 25,)),
                      Text("${formatPrice(product.price)}",
                      style: TextStyle(
                        fontSize: 25,
                        color: 
                          product.discountPrice!=null? Colors.red[400] :Colors.red[300], 
                          decoration: product.discountPrice!=null? TextDecoration.lineThrough  :TextDecoration.none,
                        ),
                      ),
                    ],
                    ),
                ],
              ),
              Column(
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      ),
                    color: Colors.green[300],
                    onPressed: ()=>{
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinishedBuy()),)
                    },
                    child: Text("Confirmar Pedido",style: TextStyle(color: Colors.white)),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
