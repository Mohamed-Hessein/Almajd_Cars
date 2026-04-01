class CarSearchModel {
  final String? id;
  final String? make;
  final String? model;
  final String? price;
  final String? imageUrl;

  CarSearchModel({this.id, this.make, this.model, this.price, this.imageUrl});

  factory CarSearchModel.fromJson(Map<String, dynamic> json) {
    final build = json['build'] as Map<String, dynamic>?;
     final media = json['media'] as Map<String, dynamic>?;

    return CarSearchModel(
      id: json['id'],
      make: build?['make'] ?? 'Unknown',
      model: build?['model'] ?? 'Car',
      price: json['price']?.toString() ?? '0',
      imageUrl: (media?['photo_links'] as List?)?.isNotEmpty == true
          ? media!['photo_links'][0]
          : '',
    );
  }
}