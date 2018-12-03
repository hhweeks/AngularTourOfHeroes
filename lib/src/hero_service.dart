import 'package:angular_tour_of_heroes_v2/src/hero.dart';
import 'package:angular_tour_of_heroes_v2/src/mock_heroes.dart';

class HeroService {

  Future<List<Hero>> getAll() async => mockHeroes;

  //sim slow connection
  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 20), getAll);
  }
}