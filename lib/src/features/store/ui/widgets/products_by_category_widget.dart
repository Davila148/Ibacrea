import 'package:flutter/cupertino.dart';
import 'package:hola/src/features/store/models/category.dart';
import 'package:hola/src/features/store/repository/product_repository.dart';
import 'package:hola/src/features/store/ui/widgets/category_widget.dart';
import 'package:hola/src/features/store/ui/widgets/product_widget.dart';

class ProductsByCategoryWidget extends StatelessWidget{

  Category category;
  ProductsByCategoryWidget(this.category);

  List<ProductWidget> loadProducts(){
    List<ProductWidget> productWidgets = List();
    PRODUCTS
    .where((product) => this.category==product.category)
    .forEach((product) => productWidgets.add(ProductWidget(product)));
    return productWidgets;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: <Widget>[
        CategoryWidget(category),
        SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: loadProducts()
                
                )
            ),
      ],
    );
  }
}