import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('images/img.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      margin: EdgeInsets.only(bottom: 16),
      child: Text(
        'Zaman Dahulu',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: prefix0.FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
      color: Colors.red,
      padding: EdgeInsets.all(16),
      child: Text(
        'Lorem Ipsum is simply dummy text of the'
        'printing and typesetting industry. Lorem Ipsum has been the industrys standard'
        'dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
        textAlign: TextAlign.justify,
      ),
    );

    Widget rateSection = Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        rateSection,
        Text('170 Reviews'),
      ],
    );

    Widget _buildTextSection(
      String text,
      double textSize,
      double paddingTop,
    ) {
      return Container(
        padding: EdgeInsets.only(top: paddingTop),
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
          ),
        ),
      );
    }

    Widget _buildMenuSection(
      IconData iconData,
      String title,
      String timestamp,
    ) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          _buildTextSection(title, 16, 8),
          _buildTextSection(timestamp, 12, 12),
        ],
      );
    }

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Old", "1 years"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-6"),
        _buildMenuSection(Icons.accessibility, "Live", "4-6"),
        _buildMenuSection(Icons.library_music, "Music", "4-6"),
      ],
    );

    return MaterialApp(
      title: 'Flutter Task 1',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          leading: Icon(Icons.favorite, color: Colors.pink),
          title: Text(
            'Learn Layouting in Eudeka!',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              margin: EdgeInsets.only(top: 16),
              child: reviewSection,
            ),
            menuSection,
          ],
        ),
      ),
    );
  }
}
