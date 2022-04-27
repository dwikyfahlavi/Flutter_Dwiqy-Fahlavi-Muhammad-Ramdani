class ContactModel {
  ContactModel({
    this.id,
    required this.name,
    required this.phone,
  });

  int? id;
  String name;
  String phone;

  factory ContactModel.fromMap(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
      );

  static Map<String, dynamic> toMap(ContactModel contact) => {
        "id": contact.id,
        "name": contact.name,
        "phone": contact.phone,
      };
}

List<ContactModel> contactModelFromListMap(List<dynamic> json) =>
    List<ContactModel>.from(json.map((x) => ContactModel.fromMap(x)));
