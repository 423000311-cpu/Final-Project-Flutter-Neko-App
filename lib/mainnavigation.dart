import 'package:flutter/material.dart';
import 'homepage.dart';
import 'favoritespage.dart';
import 'settingspage.dart';
import 'coffee.dart';

class MainNavigation extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  const MainNavigation({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;
  final List<Coffee> favorites = [];

  void toggleFavorite(Coffee coffee) {
    setState(() {
      if (favorites.contains(coffee)) {
        favorites.remove(coffee);
      } else {
        favorites.add(coffee);
      }
    });
  }

  void removeFavorite(Coffee coffee) {
    setState(() => favorites.remove(coffee));
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      CoffeeHomePage(
        favorites: favorites,
        toggleFavorite: toggleFavorite,
      ),
      FavoriteCoffeePage(
        favoriteCoffees: favorites,
        removeFavorite: removeFavorite,
      ),
      SettingsPage(
        isDarkMode: widget.isDarkMode,
        toggleTheme: widget.toggleTheme,
      ),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.grey,
        onTap: (i) => setState(() => currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
