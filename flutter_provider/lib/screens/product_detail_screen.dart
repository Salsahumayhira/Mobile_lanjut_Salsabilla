import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/all_product.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final product = Provider.of<Products>(context)
        .allProducts
        .firstWhere((prodId) => prodId.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "${product.imageUrl}",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "${product.title}",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "\$${product.price}", // Menampilkan harga produk
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "${product.description}", // Menampilkan deskripsi produk
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}