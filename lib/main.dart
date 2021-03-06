import 'package:flutter/material.dart';
import 'package:search_cep_api/views/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          brightness: Brightness.light, primarySwatch: Colors.blue[900]),
      darkTheme: ThemeData(brightness: Brightness.dark),
    ),
  );
}
