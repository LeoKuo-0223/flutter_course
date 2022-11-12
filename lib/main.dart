import 'package:flutter/material.dart';

import 'food.dart';
import 'food_card.dart';
import 'food_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Foods'),
        ),
        body: ListView(
          children: getContents(),
        ),
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    final movie = FoodModel.getFoodsByIndex(index);
    return FoodCard(
      image: Image.asset(movie.imagePath),
      title: movie.title,
      plot: movie.plot,
    );
  }

  List<Widget> getContents() {
    return <Widget>[
      SizedBox(
        height: 300,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: builder),
      ),
      SizedBox(
        height: 300,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: builder),
      ),
      Container(
        height: 300,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: builder),
      ),
    ];
  }
}
