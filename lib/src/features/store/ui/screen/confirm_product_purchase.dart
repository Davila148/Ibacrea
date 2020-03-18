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
      body: ListView(
        children: <Widget>[
          Image.network(product.imageUrl,height: 200,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Celular'
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
                    Text(product.discountPrice!=null ? "${formatPrice(product.discountPrice)}":""),
                    Text("${formatPrice(product.price)}",
                    style: TextStyle(
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
    );
  }
}
