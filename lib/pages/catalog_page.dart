import 'package:flutter/material.dart';
import '../widgets/custom_product_card.dart';
import '../models/product_model.dart';
import 'detail_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  // Sabit ve doğru görsellerle eşleştirilmiş liste
  List<ProductModel> get _mockProducts => [
        ProductModel(
          id: '1', 
          title: 'Modern Kulaklık', 
          price: 249.99, 
          description: 'Yüksek kaliteli ses ve minimalist tasarım.', 
          imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=60'
        ),
        ProductModel(
          id: '2', 
          title: 'Akıllı Hoparlör', 
          price: 99.99, 
          description: 'Evinde modern bir atmosfer yaratmak için ideal.', 
          imageUrl: 'https://images.unsplash.com/photo-1589492477829-5e65395b66cc?auto=format&fit=crop&w=500&q=60'
        ),
        ProductModel(
          id: '3', 
          title: 'Laptop Standı', 
          price: 49.50, 
          description: 'Ergonomik çalışma alanı için şık bir çözüm.', 
          imageUrl: 'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?auto=format&fit=crop&w=500&q=60'
        ),
        ProductModel(
          id: '4', 
          title: 'Deri Cüzdan', 
          price: 75.00, 
          description: 'Soft-featured ve dayanıklı el yapımı deri.', 
          imageUrl: 'https://images.unsplash.com/photo-1627123424574-724758594693?auto=format&fit=crop&w=500&q=60'
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Modern Katalog", style: TextStyle(fontWeight: FontWeight.bold)), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.8, 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10
        ),
        itemCount: _mockProducts.length,
        itemBuilder: (context, index) {
          final product = _mockProducts[index];
          return InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: product))),
            child: CustomProductCard(product: product),
          );
        },
      ),
    );
  }
}