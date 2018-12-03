import 'package:angular/angular.dart';
import 'package:angular_tour_of_heroes_v2/src/hero_component.dart';
import 'package:angular_tour_of_heroes_v2/src/hero_service.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',//this a tag in the index html
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],//this tells class how to create injected dependency
)
class HeroListComponent {
  final title = 'Tour of Heroes';
  final HeroService _heroService;

  //constructor sets HeroService
  AppComponent(this._heroService);

  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    //synchronous
//    heroes =  _heroService.getAll();

    //asynchronous
//  _heroService.getAll().then((heroes) => this.heroes = heroes);

    //asynchronous
    heroes = await _heroService.getAll();

  }

  void ngOnInit() => _getHeroes();
}