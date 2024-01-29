class Shoes {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  double rating;

  Shoes({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.rating = 0.0,
  });
}
