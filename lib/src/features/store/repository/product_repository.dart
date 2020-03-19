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
    price: 2500000,
    brand: BRANDS[0],
    description: "El Acer Aspire 3 es uno de esos equipos para usuarios que necesitan un portátil sencillo para tareas básicas. Este modelo destaca por su versatilidad, permitiéndonos elegir entre varias configuraciones diferentes. Por un lado, podemos disponer de un procesador hasta Intel Core i5 o AMD A6 o A9, acompañados por hasta 8 ó 12 GB de memoria RAM. Igualmente, el almacenamiento disponible puede ser hasta 256 GB en formato SSD o hasta 1 TB HDD. Las opciones son muy variadas.",
    category: CATEGORIES[0],
    ),
    Product(
    name:"Computador Asus", 
    imageUrl:"https://media.aws.alkosto.com/media/catalog/product/cache/6/image/69ace863370f34bdf190e4e164b6e123/1/9/192876009703-7.jpg",
    price: 1800000,
    brand: BRANDS[1],
    description: "Diseñado para la multitarea diaria y el entretenimiento para los usuarios inteligentes y prácticos, los portátiles ASUS Serie X redefinen sus expectativas de todo terreno portátil. Con un acabado de lineas circulares en el touchpad, la Serie X añade un toque de sofisticación y elegancia a la informática cotidiana. Su perfil delgado es 5% más delgado que el anterior portátil de la serie X, y todavía mantiene una gran pantalla táctil (opcional de fábrica en algunos modelos) con múltiples puntos de entrada Smart Gesture intuitiva, múltiples puertos USB 3.0 para la transferencia rápida de datos y la tecnología IceCool para mantener su touchpad fresco.",
    category: CATEGORIES[0],
    ),
    Product(
    name:"Computador HP Gamer", 
    imageUrl:"https://panamericana.vteximg.com.br/arquivos/ids/338565-600-690/portatil-hp-pavilion-gaming-15-dk0001la-15-5-negro-con-verde-1-193905279975.jpg?v=637075235645870000",
    price: 3000000,
    brand: BRANDS[2],
    description: "No sacrifiques nada con el fino y potente portátil gaming HP Pavilion. Experimenta gráficos de alta calidad y potencia de procesamiento para juegos y realización de múltiples tareas, además de una refrigeración térmica mejorada para un rendimiento y estabilidad generales. Sumérgete en el juego gracias a una pantalla con bisel fino y audio optimizado. El equilibrio perfecto entre trabajar y jugar, para que puedas hacerlo todo.",
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