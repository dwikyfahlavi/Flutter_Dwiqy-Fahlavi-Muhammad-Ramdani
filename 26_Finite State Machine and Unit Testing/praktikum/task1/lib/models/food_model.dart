class Food {
  Food({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory Food.fromMap(Map<String, dynamic> json) => Food(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}

List<Food> foodFromListMap(List<dynamic> json) => List<Food>.from(json.map((x) => Food.fromMap(x)));
