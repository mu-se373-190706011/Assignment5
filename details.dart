import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PERSONAL IMAGE'),
        ),
        body: ListView(
          children: [
            Image.asset("image/6f802e7963125382509022a638122505.jpg"),
          ],
        ));
  }
}
