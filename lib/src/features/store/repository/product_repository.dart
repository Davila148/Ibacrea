import 'package:hola/src/features/store/models/brand.dart';
import 'package:hola/src/features/store/models/category.dart';
import 'package:hola/src/features/store/models/product.dart';

List<Brand> BRANDS =[
  Brand(id:1,name: "Acer"),
  Brand(id:2,name: "Asus"),
  Brand(id:3,name: "HP"),
  Brand(id:4,name: "Lenovo"),
  Brand(id:5,name: "Dell"),
  Brand(id:6,name: "Havit"),
];

List<Category> CATEGORIES = [
  Category(id:1,name:"Computadores"),
  Category(id:2,name:"Cargadores"),
  Category(id:3,name:"Audifonos"),
  Category(id:4,name:"Pantallas"),
  Category(id:5,name:"Celulares"),
  Category(id:6,name:"Perifericos"),
];

List<Product> PRODUCTS=[
  Product(
    name:"Computador Acer", 
    imageUrl:"https://http2.mlstatic.com/computadora-portatil-acer-aspire-e-15-fhd-1tb-hdd-core-i3-D_NQ_NP_647935-MCO31624407619_072019-Q.jpg",
    price: 3000000,
    brand: BRANDS[0],
    category: CATEGORIES[0],
    ),
  Product(
    name:"Cargador", 
    imageUrl:"https://http2.mlstatic.com/cargador-laptop-lenovo-sl400-sl500-3000-ibm-t60-t61-r61-20v-D_NQ_NP_395001-MLV20258564076_032015-Q.jpg",
    price: 100000,
    discountPrice: 80000,
    brand: BRANDS[3],
    category: CATEGORIES[1],
    ),
  Product(
    name:"Pantalla 20 Pulgadas", 
    imageUrl:"https://http2.mlstatic.com/acer-v206hq-umiv6aaa01-pantalla-de-20-pulgadas-con-led-il-D_NQ_NP_803386-MCO40432267424_012020-F.jpg",
    price: 400000,
    brand: BRANDS[0],
    category: CATEGORIES[3],
  ),
  Product(
    name:"Audifonos", 
    imageUrl:"https://havit-spain.com/spain/wp-content/uploads/2019/06/H2232.jpg",
    price: 1000000,
    discountPrice: 800000,
    brand: BRANDS[5],
    category: CATEGORIES[2],
  ),
];