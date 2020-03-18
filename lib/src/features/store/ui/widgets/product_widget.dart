
import 'package:flutter/material.dart';
import 'package:hola/src/features/store/models/product.dart';
import 'package:hola/src/features/store/ui/screen/confirm_product_purchase.dart';
import 'package:hola/src/features/store/ui/screen/product_details.dart';
import 'package:intl/intl.dart';

class ProductWidget extends StatelessWidget{

  Product product;
  ProductWidget(this.product);

  String formatPrice(double price){
    final formatCurrency = new NumberFormat.simpleCurrency();
    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        GestureDetector(child: Image.network(product.imageUrl,height: 200,),
        
        onTap: (){

          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetails(product)),);
        },
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text(product.discountPrice!=null ? "${formatPrice(product.discountPrice)}":""),
          Text("${formatPrice(product.price)}",
          style: TextStyle(
            color: product.discountPrice!=null? Colors.grey[400] :Colors.black, decoration: product.discountPrice!=null? TextDecoration.lineThrough  :TextDecoration.none),),
        ],
        ),
        Text(product.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                ),
              color: Colors.white,
              onPressed: ()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetails(product)),)
              },
              child: Text("Detalles",style: TextStyle(color: Colors.red[300]))
              ),
            Container(width: 20,),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                ),
              color: Colors.white,
              onPressed: ()=>{
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfirmProductPurchase(product)),)
              },
              child: Text("Pedir",style: TextStyle(color: Colors.green[300])),
              )
          ],
        )
      ],
    );
  }
}