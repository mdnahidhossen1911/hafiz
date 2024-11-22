import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hafiz/activity/homeactivity.dart';
import 'package:hafiz/activity/introActivity.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((_) {
      runApp(MyApp());
    });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hafiz',
      routes: {
        '/': (context)=> IntroActivity(),
        '/HomeActivity': (context)=> Homeactivity(),
      },
    );
  }
}

