import 'package:flutter/material.dart';
import 'package:provider_app/CartModel.dart';
import 'package:provider_app/HomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCart>(
      create: (_) => MyCart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.green[100],
        ),
        home: MyHomePage(),
      ),
    );
  }
}
