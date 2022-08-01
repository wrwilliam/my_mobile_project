

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Forms> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('input informations'),
    ),
    body: Center(child: Column(children: <Widget>[
    Container(
    margin: EdgeInsets.all(20),
    child: TextField(
    controller: nameController,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Full Name',
    ),
    onChanged: (text) {
    setState(() {
    fullName = text;
    });
    },
    )),
      Container(
        margin: EdgeInsets.all(20),
        child: Text(fullName),
      )
    ]))),
    );
  }
}