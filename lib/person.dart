// ignore_for_file: public_member_api_docs, sort_constructors_first

class Person {
  String name;
  int age;
  Person({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
