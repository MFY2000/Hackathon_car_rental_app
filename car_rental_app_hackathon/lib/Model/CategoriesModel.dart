class CategoriesModel {
  int? id;
  String? name;
  String? description;
  String? image;
  int? rating;
  int? price;

  CategoriesModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.rating,
      this.price});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    rating = json['rating'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['price'] = this.price;
    return data;
  }
}