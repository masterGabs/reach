import 'package:flutter/material.dart';
import 'package:hello/screens/calender.dart';
import 'package:hello/screens/contacts.dart';
import 'package:hello/screens/conversation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.grey.shade900,
        primarySwatch: Colors.blue,
      ),
      //home: Contacts(),
      initialRoute: 'calender',
      routes: {
        'contacts': (context) => Contacts(),
        'conversation': (context) => Conversation(),
        'calender': (context) => Calender(),
      },
    );
  }
}
