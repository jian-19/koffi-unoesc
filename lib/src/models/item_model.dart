
class ItemModel {
  final String id; 
  final String name;
  final String description; 
  final double price;
  final String image;
  final int category_id;

  ItemModel({
    required this.id, 
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category_id,
  });


  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id']?.toString() ?? '', 
      name: json['title']?.toString() ?? '', 
      description: json['content']?.toString() ?? '', 
      price: (json['amount'] as num?)?.toDouble() ?? 0.0, 
      image: json['image']?.toString() ?? '', 
      category_id: (json['category_id'] as int?) ?? 0, 
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'id': id, 
      'title': name,
      'content': description,
      'amount': price,
      'image': image,
      'category_id': category_id, 
    };
  }
}