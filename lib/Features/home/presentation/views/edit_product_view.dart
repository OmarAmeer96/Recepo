import 'package:flutter/material.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';

class EditProductView extends StatelessWidget {
  final Product? product;

  const EditProductView({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (product == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Product'),
        ),
        body: const Center(
          child: Text('No product found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Edit Product',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Product ID: ${product!.id ?? ''}'),
            SizedBox(height: 8),
            Text('Product Name: ${product!.title ?? ''}'),
            SizedBox(height: 8),
            Text('Product Price: ${product!.price ?? ''}'),
            SizedBox(height: 8),
            Text('Product Description: ${product!.description ?? ''}'),
            SizedBox(height: 8),
            // Add more fields as necessary
          ],
        ),
      ),
    );
  }
}
