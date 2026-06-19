class ProductModel {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  ProductModel({
    required this.id, 
    required this.title, 
    required this.price, 
    required this.description, 
    required this.imageUrl
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'].toString(),
      title: data['title'] ?? 'N/A',
      price: (data['price'] ?? 0).toDouble(),
      description: data['description'] ?? '',
      imageUrl: data['image'] ?? '',
    );
  }
}