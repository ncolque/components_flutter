import 'package:components_flutter/src/models/models.dart';
import 'package:components_flutter/src/pages/screens.dart';
import 'package:flutter/material.dart';

class Routes {
  static const initialRoute = '/';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/', icon: Icons.ac_unit, name: 'Home', screen: HomePage()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alertas',
        screen: AlertPage()),
    MenuOption(
        route: 'avatar',
        icon: Icons.accessibility,
        name: 'Avatars',
        screen: AvatarPage()),
    MenuOption(
        route: 'card',
        icon: Icons.folder_open,
        name: 'Cards',
        screen: CardPage()),
    MenuOption(
        route: 'animatedContainer',
        icon: Icons.donut_large,
        name: 'Animated Container',
        screen: AnimatedContainerPage()),
        MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs',
        screen: InputPage()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertPage(),
    );
  }
}
