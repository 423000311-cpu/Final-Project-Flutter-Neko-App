import 'package:flutter/material.dart';
import 'coffee.dart';
import 'coffeeitem.dart';
import 'detailspage.dart';

class FavoriteCoffeePage extends StatelessWidget {
  final List<Coffee> favoriteCoffees;
  final Function(Coffee) removeFavorite;

  const FavoriteCoffeePage({
    super.key,
    required this.favoriteCoffees,
    required this.removeFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
        backgroundColor: const Color(0xff2c422f),
      ),
      body: favoriteCoffees.isEmpty
          ? const Center(child: Text("No favorites yet!"))
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favoriteCoffees.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                final coffee = favoriteCoffees[index];
                return CoffeeItem(
                  coffee: coffee,
                  isFavorite: true,
                  onFavoriteToggle: () => removeFavorite(coffee),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(coffee: coffee),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
