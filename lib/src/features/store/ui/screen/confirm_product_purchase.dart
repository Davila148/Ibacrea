import 'package:flutter/material.dart';
import 'package:hola/src/features/store/models/product.dart';
import 'package:intl/intl.dart';

class ConfirmProductPurchase extends StatelessWidget{

  Product product;
  ConfirmProductPurchase(this.product);

  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final focus = FocusNode();

  String formatPrice(double price){
    final formatCurrency = new NumberFormat.simpleCurrency();
    return formatCurrency.format(price);
  }

  _validateData(context){
    if (_nameController.text.length==0 || _addressController.text.length==0 || _phoneController.text.length==0){
      showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("ERROR"),
          content: Text("No puede dejar ningun dato en blanco"),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Aceptar"),
              )
            ],
        );
      }
    );
    } else {
        showDialog(context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Confirmacion"),
            content: Text(
              "Desea enviar el producto ${product.name} a la direccion ${_addressController.text} a nombre de la persona ${_nameController.text} al telefono ${_phoneController.text}"
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Confirmado"),
                onPressed: (){},
                ),
              FlatButton(
                child: Text("Corregir datos"),
                onPressed: (){},
              ),
            ],
          );
        }
      );
    }
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
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (text)=> FocusScope.of(context).nextFocus() ,
                    controller: _nameController,
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
                      hintText: 'Nombre',
                      fillColor: Colors.grey[300],
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (text)=> FocusScope.of(context).nextFocus() ,
                    controller: _addressController,
                    autocorrect: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.home),
                      border: InputBorder.none,
                      hintText: 'Direccion',
                      fillColor: Colors.grey[300],
                    ),
                  ),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (text)=> _validateData(context),
                    controller: _phoneController,
                    autocorrect: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      filled: true,     
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      hintText: 'Celular',
                      //hintStyle: TextStyle(color: Colors.black,fontSize: 50,),
                      fillColor: Colors.grey[300],
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
                      Text(product.discountPrice!=null ? "\n + ${formatPrice(product.discountPrice)}":"",style: TextStyle(fontSize: 25,)),
                      Text("\n${formatPrice(product.price)}\n",
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
                  MaterialButton(
                    minWidth: 150.0,
                    height: 80.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      ),
                    color: Colors.green[300],
                    onPressed: ()=>{_validateData(context)},
                    child: Text("Confirmar Pedido",style: TextStyle(color: Colors.white,fontSize: 25,)),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
