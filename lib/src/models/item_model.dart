class ItemModel {
  late String name;
  late String content;
  late double price;
  late String image;

  ItemModel({
    required this.name,
    required this.content,
    required this.price,
    required this.image,
  });

  ItemModel.fromJson(Map<String, dynamic> json) {
    name = json['title'] ?? '';
    content = json['content'] ?? '';
    price = (json['amount'] as num).toDouble();
    image = json['image'] ?? "https://placehold.co/75x75.png";
  }

  Map<String, dynamic> toJson() {
    return {
      'title': name,
      'content': content,
      'amount': price,
      'image': image,
    };
  }
}
