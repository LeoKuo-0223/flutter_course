import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.image,
    required this.title,
    required this.plot,
  }) : super(key: key);

  final Image image;
  final String title;
  final String plot;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Card(
          elevation: 10,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: image,
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Icon(Icons.favorite),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        flex: 2,
                        child: Text(
                          plot,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
