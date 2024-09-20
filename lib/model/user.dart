enum Type {regular, irregular}

class User{
  User({required this.name, required this.email, required this.age, required this.type});

  final String name;
  final String email;
  final double age;
  final Type type;
}