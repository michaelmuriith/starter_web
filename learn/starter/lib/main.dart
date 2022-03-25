import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './router/route_paths.dart' as routes;
import './router/router.dart' as router;
import 'locator.dart';
import 'services/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.signUpViewROute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
