class Store {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;

  Store({this.count, this.next, this.previous, this.results});

  Store.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
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

class Results {
  String? id;
  String? title;
  int? price;
  String? thumbnail;
  String? description;

  Results({this.id, this.title, this.price, this.thumbnail, this.description});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    thumbnail = json['thumbnail'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] =id;
    data['title'] = title;
    data['price'] = price;
    data['thumbnail'] = thumbnail;
    data['description'] = description;
    return data;
  }
}