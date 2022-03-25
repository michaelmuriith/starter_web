import 'package:starter/views/signUp/signUp_view.dart';

import './route_paths.dart' as routes;
import 'package:flutter/material.dart';
import 'package:starter/views/views.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.homeViewRoute:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case routes.loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    case routes.signUpViewROute:
      return MaterialPageRoute(builder: (context) => SignUpView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('no path for ${settings.name}'),
          ),
        ),
      );
  }
}
