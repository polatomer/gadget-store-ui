class ProductMolde {
  String? title;
  String? price;
  String? image;

  ProductMolde({this.title, this.price, this.image});

  ProductMolde.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}
