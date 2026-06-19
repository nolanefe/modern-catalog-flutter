import 'package:flutter/material.dart';
import '../models/product_model.dart';

int globalCartCount = 0; 

class DetailPage extends StatefulWidget {
  final ProductModel product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _addToCart() {
    setState(() { globalCartCount++; });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.product.title} sepete eklendi! Toplam: $globalCartCount ürün.")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: Column(
        children: [
          Image.network(
            widget.product.imageUrl,
            height: 300, width: double.infinity, fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => const SizedBox(height: 300, child: Center(child: Icon(Icons.shopping_bag, size: 100, color: Colors.grey))),
          ),
          Padding(padding: const EdgeInsets.all(16.0), child: Text(widget.product.description, style: const TextStyle(fontSize: 18))),
          Text("\$${widget.product.price}", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Spacer(),
          Padding(padding: const EdgeInsets.all(20.0), child: ElevatedButton(onPressed: _addToCart, child: const Text("Sepete Ekle"))),
        ],
      ),
    );
  }
}