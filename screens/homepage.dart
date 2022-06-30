import 'package:flutter/material.dart';
import 'package:gadgetstore/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Gadget Store'),
        ),
        body: HomeBody());
  }
}
