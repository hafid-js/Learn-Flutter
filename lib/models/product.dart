class Product {
  final String id;
  String title; 
  String price; 
  final DateTime createdAt;
  DateTime? updatedAt;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.createdAt,
    this.updatedAt,
  });
}
