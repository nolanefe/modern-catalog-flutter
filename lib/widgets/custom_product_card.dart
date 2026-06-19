import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  const CustomProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)]),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.shopping_bag, size: 40, color: Colors.grey)),
              ),
            ),
          ),
          Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text("\$${product.price}"),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}