// Import Relevant Packages:
import 'package:flutter/material.dart';
import 'package:lc_app/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LCApp());
}

class LCApp extends StatelessWidget {
  const LCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {HomeScreen.id: (context) => HomeScreen()},
    );
  }
}
