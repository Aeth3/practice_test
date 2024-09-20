import 'package:flutter/material.dart';

import 'model/user.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
      theme: ThemeData(useMaterial3: true),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<User> registeredUser = [];
  void addUser() {
    setState(() {
      registeredUser.add(User(
          name: 'Aj',
          email: 'ajdamalan@gmail.com',
          age: 22,
          type: Type.irregular));
    });
  }

  @override
  Widget build(context) {
    Widget result = const Center(
      child: Text('No user'),
    );
    if (registeredUser.isNotEmpty) {
      result = Column(
        children: [
          Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('username: ${registeredUser[0].name}'),
                      Text('email: ${registeredUser[0].email}'),
                      Text('age: ${registeredUser[0].age.toString()}'),
                      Text('type: ${registeredUser[0].type.toString()}'),
                    ]),
              ),
            ),
          ),
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              addUser();
            },
            icon: const Icon(Icons.add))
      ]),
      body: result,
    );
  }
}
