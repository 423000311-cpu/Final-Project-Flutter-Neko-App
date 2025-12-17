import 'package:flutter/material.dart';
import 'coffee.dart';

class DetailPage extends StatelessWidget {
  final Coffee coffee;

  const DetailPage({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.name),
        backgroundColor: const Color(0xff2c422f),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(coffee.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(
              coffee.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ingredients',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(coffee.ingredients, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            const Text(
              'Instructions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(coffee.instructions, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
