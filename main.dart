import 'package:flutter/material.dart';
import 'package:gadgetstore/models/products.dart';
import 'package:gadgetstore/screens/pdt_detail_screen.dart';
import 'screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Products())],
      child: MaterialApp(
        title: 'Gadget Store',
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.white),
        home: HomePage(),
        routes: {DetailPage.routeName: (ctx) => DetailPage()},
      ),
    );
  }
}
