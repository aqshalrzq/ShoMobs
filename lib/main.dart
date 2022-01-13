import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shomobs/pages/dashboard.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ShoMobs",
      home: Dashboard(),
    );
  }
}



