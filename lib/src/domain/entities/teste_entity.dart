import "dart:convert";

class TesteEntity {
  final int id;
  final String name;
  final String email;
  final String password;
  TesteEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "email": email,
      "password": password,
    };
  }

  factory TesteEntity.fromMap(Map<String, dynamic> map) {
    return TesteEntity(
      id: map["id"] as int,
      name: map["name"] as String,
      email: map["email"] as String,
      password: map["password"] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TesteEntity.fromJson(String source) =>
      TesteEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
