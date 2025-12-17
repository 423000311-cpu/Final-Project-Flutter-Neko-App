import 'package:flutter/material.dart';
import 'mainnavigation.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  @override
  State<CoffeeApp> createState() => _CoffeeAppState();
}

class _CoffeeAppState extends State<CoffeeApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() => isDarkMode = !isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 249, 237),
      fontFamily: 'Pridi', // ✅ use your custom font
      useMaterial3: true,
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.green,
      fontFamily: 'Pridi', // ✅ apply here too
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Neko Coffee',
      theme: isDarkMode ? darkTheme : lightTheme,
      home: MainNavigation(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
