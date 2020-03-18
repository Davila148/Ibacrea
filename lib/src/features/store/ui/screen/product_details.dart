import 'package:flutter/material.dart';
import 'package:hola/src/features/store/models/product.dart';
import 'package:intl/intl.dart';

import 'confirm_product_purchase.dart';

class ProductDetails extends StatelessWidget{

  Product product;
  ProductDetails(this.product);

  String formatPrice(double price){
    final formatCurrency = new NumberFormat.simpleCurrency();
    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading:Builder(
            builder: (BuildContext context){
            return IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            }
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite,color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
            icon: Icon(Icons.share,color: Colors.black),
            onPressed: () {}, 
            ),
          ],
        ),

        body: 
        ListView(
          children: <Widget>[
            Image.network(product.imageUrl,height: 200,),
            Column(
              children: <Widget>[
                Text(product.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("Lorem"),
              ]
            ),
            
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(product.discountPrice!=null ? "${formatPrice(product.discountPrice)}":""),
                    Text("${formatPrice(product.price)}",
                    style: TextStyle(
                      color: 
                        product.discountPrice!=null? Colors.grey[400] :Colors.green[300], 
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
                    MaterialPageRoute(builder: (context) => ConfirmProductPurchase(product)),)
                  },
                  child: Text("Pedir",style: TextStyle(color: Colors.white)),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
