import 'package:flutter/material.dart';
import '../models/products.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CategorySmartphone extends StatelessWidget {
  static const routeName = '/cat_smartphone';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(loadedPdt.imgUrl),
            ),
          ),
          Text(
            'Price: \RM${loadedPdt.price}',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '${loadedPdt.description}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              cart.addItem(productId, loadedPdt.name, loadedPdt.price);
            },
            child: const Text('Add to Cart'),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     cart.addItem(productId, loadedPdt.name, loadedPdt.price);
      //   },
      //   child: Icon(
      //     Icons.shopping_cart,
      //     size: 30,
      //   ),
      // ),
    );
  }
}
