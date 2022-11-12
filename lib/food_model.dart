import 'food.dart';

class FoodModel {
  static const imagePathes = <String>[
    'assets/images/movie1.jpg',
    'assets/images/movie2.jpg',
    'assets/images/movie1.jpg',
    'assets/images/movie1.jpg',
    'assets/images/movie1.jpg',
  ];

  static const titles = <String>[
    'movie1',
    'movie2',
    'movie3',
    'movie4',
    'movie5',
  ];

  static String plot = 'sdfadfajsd;fljasd;lfjasd;';

  static Food getFoodsByIndex(int index) {
    return Food(
      imagePath: imagePathes[index],
      title: titles[index],
      plot: plot,
    );
  }
}
