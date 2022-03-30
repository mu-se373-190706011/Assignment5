import 'package:flutter/material.dart';
import "package:mobileprogramming/details.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 5',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageViewApp_Assignment 5'),
        elevation: 4.0,
        actions: [
          IconButton(
            icon: Icon(Icons.article_rounded),
            onPressed: null,
          )
        ],
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (_, index) {
        return ListTile(
          /* children: [
            ListTile(
              title: Text("insan"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("insan"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("insan"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("insan"),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],*/
          title: Text("insan"),
          leading: Icon(Icons.star),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(index)));
          },
        );
      },
    );
  }
}
