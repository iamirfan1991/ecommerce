import 'package:ecommerce/models/product.dart';

class MyProducts {
  static List<Product> allProducts = [...sneakersList, ...jacketsList];
  static List<Product> sneakersList = [
    Product(
      id: 1,
      name: 'Nike Air Max 200',
      price: 1150,
      image: 'assets/images/shoes1.png',
      category: 'Trending Now',
      description:
          'KYLE Designer Two-Tone Slipons in HAND PATINA Chocolate brown and light brown hues exude elegance. Lightweight EVA sole, memory foam insole with AIRFLEXLITE technology. Handcrafted in Argentinian leather and laser graded for a snug fit. Versatile for office or leisure and designed in Italy.',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Nike Air Max 200',
      price: 1300,
      image: 'assets/images/shoes2.png',
      category: 'Trending Now',
      description:
          'KYLE Designer Two-Tone Slipons in HAND PATINA Chocolate brown and light brown hues exude elegance. Lightweight EVA sole, memory foam insole with AIRFLEXLITE technology. Handcrafted in Argentinian leather and laser graded for a snug fit. Versatile for office or leisure and designed in Italy.',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Nike Air Max 200',
      price: 1180,
      image: 'assets/images/shoes3.png',
      category: 'Trending Now',
      description:
          'KYLE Designer Two-Tone Slipons in HAND PATINA Chocolate brown and light brown hues exude elegance. Lightweight EVA sole, memory foam insole with AIRFLEXLITE technology. Handcrafted in Argentinian leather and laser graded for a snug fit. Versatile for office or leisure and designed in Italy.',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Nike Air Max 200',
      price: 1800,
      image: 'assets/images/shoes3.png',
      category: 'Trending Now',
      description:
          'KYLE Designer Two-Tone Slipons in HAND PATINA Chocolate brown and light brown hues exude elegance. Lightweight EVA sole, memory foam insole with AIRFLEXLITE technology. Handcrafted in Argentinian leather and laser graded for a snug fit. Versatile for office or leisure and designed in Italy.',
      quantity: 1,
    ),
  ];
  static List<Product> jacketsList = [
    Product(
      id: 1,
      name: 'Addidas Jackets',
      price: 3000,
      image: 'assets/images/jacket4.png',
      category: 'Trending Now',
      description:'Brown solid bomber, has a mock collar, 3 pockets ,has a zip closure, long sleeves, straight hemline, polyester lining',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Nike Jackets',
      price: 1500,
      image: 'assets/images/jacket4.png',
      category: 'Trending Now',
      description:'Brown solid bomber, has a mock collar, 3 pockets ,has a zip closure, long sleeves, straight hemline, polyester lining',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Puma Jackets',
      price: 2000,
      image: 'assets/images/jacket4.png',
      category: 'Trending Now',
      description:'Brown solid bomber, has a mock collar, 3 pockets ,has a zip closure, long sleeves, straight hemline, polyester lining',
      quantity: 1,
    ),
    Product(
      id: 1,
      name: 'Decathlon Jackets',
      price: 1800,
      image: 'assets/images/jacket4.png',
      category: 'Trending Now',
      description:'Brown solid bomber, has a mock collar, 3 pockets ,has a zip closure, long sleeves, straight hemline, polyester lining',
      quantity: 1,
    ),
  ];
}
