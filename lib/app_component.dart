import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes_v2/src/hero_component.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',//this a tag in the index html
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) => selected = hero;
}