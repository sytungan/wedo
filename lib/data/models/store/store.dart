class Store {
  int? count;
  String? next;
  String? previous;
  List<Product>? results;

  Store({this.count, this.next, this.previous, this.results});

  Store.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Product>[];
      json['results'].forEach((v) {
        results!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String? id;
  String? title;
  int? price;
  String? thumbnail;
  String? description;

  Product({this.id, this.title, this.price, this.thumbnail, this.description});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    thumbnail = json['thumbnail'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['thumbnail'] = thumbnail;
    data['description'] = description;
    return data;
  }
}
