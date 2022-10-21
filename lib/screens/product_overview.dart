import 'package:flutter/material.dart';
import 'package:shopapp/widgets/product_items.dart';
import '../models/product.dart';


class ProductOverviewScreen extends StatelessWidget {
   ProductOverviewScreen({Key? key}) : super(key: key);
  
  // This is the list of product which we want to show on screen
  final List<Product> loadedProducts = [
    Product(id: 'p1', title: 'Red shirt', description: 'A red shirt', price: 45245, imageUrl: 'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg'),
    Product(id: 'p2', title: 'white shirt', description: 'This is a wite shirt', price: 63556, imageUrl: 'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__340.jpg')
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        // This defines how every items is build and it takes context and index as argument.
        itemBuilder: (ctx, i)=> ProductItem(loadedProducts[i].id, loadedProducts[i].title, loadedProducts[i].imageUrl ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      ),
    );
  }
}
