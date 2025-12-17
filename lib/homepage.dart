import 'package:flutter/material.dart';
import 'coffee.dart';
import 'detailspage.dart';
import 'coffeeitem.dart';

class CoffeeHomePage extends StatefulWidget {
  final List<Coffee> favorites;
  final Function(Coffee) toggleFavorite;

  const CoffeeHomePage({
    super.key,
    required this.favorites,
    required this.toggleFavorite,
  });

  @override
  State<CoffeeHomePage> createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {
  String searchQuery = '';
  String selectedCategory = 'all';
  final categories = ['all', 'iced', 'milkshake', 'espresso', 'matcha'];

  List<Coffee> get filteredCoffees {
    return sampleCoffees.where((coffee) {
      final matchesSearch =
          coffee.name.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesCategory =
          selectedCategory == 'all' || coffee.category == selectedCategory;
      return matchesSearch && matchesCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xff2c422f),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search coffee...',
                filled: true,
                fillColor: Colors.green[50],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
            const SizedBox(height: 10),

            // Category chips
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  final isSelected = cat == selectedCategory;
                  return ChoiceChip(
                    label: Text(
                      cat[0].toUpperCase() + cat.substring(1),
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.green[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    selected: isSelected,
                    backgroundColor: Colors.green[100],
                    selectedColor: Colors.green[700],
                    onSelected: (_) => setState(() => selectedCategory = cat),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Centered, fixed logo (stays put)
            Center(
              child: Image.asset(
                'assets/images/logo_1.png',
                width: 120,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 16),

            // Coffee grid (scrolls independently)
            Expanded(
              child: GridView.builder(
                itemCount: filteredCoffees.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  final coffee = filteredCoffees[index];
                  final isFav = widget.favorites.contains(coffee);
                  return CoffeeItem(
                    coffee: coffee,
                    isFavorite: isFav,
                    onFavoriteToggle: () => widget.toggleFavorite(coffee),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(coffee: coffee),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
