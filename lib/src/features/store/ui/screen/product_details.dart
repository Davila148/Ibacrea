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
    return Scaffold(
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
              icon: Icon(Icons.favorite_border,color: Colors.black),
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
                Text(product.name + '\n',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text(product.description + '\n', textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: Colors.grey,), ),
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
                        product.discountPrice!=null? Colors.grey[400] :Colors.green[300], 
                        decoration: product.discountPrice!=null? TextDecoration.lineThrough  :TextDecoration.none,
                      ),
                    ),
                  ],
                  ),
              ],
            ),
            Container(
              margin: new EdgeInsets.only(bottom:20.0,top:20.0),
              child: Column(
              children: <Widget>[
                MaterialButton(
                  minWidth: 150.0,
                  height: 50.0,
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                    ),
                  color: Colors.green[300],
                  onPressed: ()=>{
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConfirmProductPurchase(product)),)
                  },
                  child: Text("Pedir",style: TextStyle(color: Colors.white,fontSize: 25,)),
                  ),
              ],
              ),
            ),
          ],
        ),
      );
  }
}
