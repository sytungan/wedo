class User {
  User({
    this.id,
    this.name,
    this.age,
  });

  String? id;
  String? name;
  int? age;
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        age: int.parse(json['age']),
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'age': age,
      };
}
