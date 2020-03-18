import 'brand.dart';
import 'category.dart';

class Product{
  int id;
  String name;
  String imageUrl;
  double price;
  double discountPrice;
  String description;
  Category category;
  Brand brand;

  Product({this.id,this.name,this.imageUrl,this.price,this.discountPrice,this.description,this.category,this.brand});
}