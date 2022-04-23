import 'package:wedo/data/models/user/user.dart';

class Home {
  List<Store>? store;
  List<Activity>? activity;
  List<Task>? task;

  Home({this.store, this.activity, this.task});

  Home.fromJson(Map<String, dynamic> json) {
    if (json['store'] != null) {
      store = <Store>[];
      json['store'].forEach((v) {
        store!.add(new Store.fromJson(v));
      });
    }
    if (json['activity'] != null) {
      activity = <Activity>[];
      json['activity'].forEach((v) {
        activity!.add(new Activity.fromJson(v));
      });
    }
    if (json['task'] != null) {
      task = <Task>[];
      json['task'].forEach((v) {
        task!.add(new Task.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.store != null) {
      data['store'] = this.store!.map((v) => v.toJson()).toList();
    }
    if (this.activity != null) {
      data['activity'] = this.activity!.map((v) => v.toJson()).toList();
    }
    if (this.task != null) {
      data['task'] = this.task!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Store {
  String? id;
  String? title;
  int? price;
  String? thumbnail;
  String? description;

  Store({this.id, this.title, this.price, this.thumbnail, this.description});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    thumbnail = json['thumbnail'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['thumbnail'] = this.thumbnail;
    data['description'] = this.description;
    return data;
  }
}

class Activity {
  String? id;
  User? create;
  User? apply;
  String? title;
  int? point;
  String? thumbnail;
  String? complete;

  Activity(
      {this.id,
      this.create,
      this.apply,
      this.title,
      this.point,
      this.thumbnail,
      this.complete});

  Activity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    create = json['create'] != null ? new User.fromJson(json['create']) : null;
    apply = json['apply'];
    title = json['title'];
    point = json['point'];
    thumbnail = json['thumbnail'];
    complete = json['complete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.create != null) {
      data['create'] = this.create!.toJson();
    }
    data['apply'] = this.apply;
    data['title'] = this.title;
    data['point'] = this.point;
    data['thumbnail'] = this.thumbnail;
    data['complete'] = this.complete;
    return data;
  }
}

class Task {
  String? id;
  User? create;
  User? apply;
  String? title;
  int? point;
  String? thumbnail;
  String? complete;

  Task(
      {this.id,
      this.create,
      this.apply,
      this.title,
      this.point,
      this.thumbnail,
      this.complete});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    create = json['create'] != null ? new User.fromJson(json['create']) : null;
    apply = json['apply'] != null ? new User.fromJson(json['apply']) : null;
    title = json['title'];
    point = json['point'];
    thumbnail = json['thumbnail'];
    complete = json['complete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.create != null) {
      data['create'] = this.create!.toJson();
    }
    if (this.create != null) {
      data['apply'] = this.apply!.toJson();
    }
    data['title'] = this.title;
    data['point'] = this.point;
    data['thumbnail'] = this.thumbnail;
    data['complete'] = this.complete;
    return data;
  }
}
