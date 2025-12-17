class Coffee {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String ingredients;
  final String instructions;
  final String category; // New: iced, milkshake, espresso, matcha

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
    required this.category,
  });
}



// Sample coffee list

final List<Coffee> sampleCoffees = [
  Coffee(
    id: 'americano',
    name: 'Americano',
    description: 'Espresso diluted with hot water.',
    imageUrl: 'https://cdn.pixabay.com/photo/2020/03/31/17/42/ice-coffee-4988704_1280.jpg',
    ingredients: 
    '• Coffee ground\n• Hot water',
    instructions: 
    '1. Heat water.\n2. Pour over ground.\n3. Serve.',
    category: 'espresso',
  ),

  Coffee(
    id: 'Latte',
    name: 'Creamy Latte',
    description: 'Espresso with steamed milk.',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/08/06/07/10/coffee-2589760_1280.jpg',
    ingredients: '• Espresso: 1–2 shots\n• Steamed milk: 200–240 ml\n• Milk foam',
    instructions: '1. Brew espresso.\n2. Steam milk.\n3. Pour milk over espresso.\n4. Spoon foam on top.',
    category: 'espresso',
  ),

  Coffee(
    id: 'cappuccino',
    name: 'Cappuccino',
    description: 'Espresso with equal milk & foam.',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/11/29/13/54/breakfast-1870009_1280.jpg',
    ingredients: '• Espresso 1–2 shots\n• Steamed milk 90 ml\n• Milk foam 90 ml',
    instructions:
        '1. Pull espresso.\n2. Steam milk for foam.\n3. Pour milk over espresso.\n4. Serve with foam.',
    category: 'espresso',
  ),
  
  Coffee(
    id: 'strawberry_shake',
    name: 'Strawberry Shake',
    description: 'Sweet creamy milkshake.',
    imageUrl: 'https://cdn.pixabay.com/photo/2022/11/04/04/01/christmas-milkshake-7568976_1280.jpg',
    ingredients:
        '• Strawberries 1 cup\n• Milk 1 cup\n• Ice cream 2 scoops\n• Sugar to taste',
    instructions:
        '1. Blend ingredients until smooth.\n2. Serve chilled with whipped cream.',
    category: 'milkshake',
  ),

  Coffee(
    id: 'mango_shake',
    name: 'Mango Shake',
    description: 'Refreshing tropical milkshake.',
    imageUrl: 'https://cdn.pixabay.com/photo/2020/01/03/21/59/smoothie-4739243_1280.jpg',
    ingredients:
        '• Mango 1 cup\n• Milk 1 cup\n• Ice cream/yogurt 1/2 cup\n• Sugar/honey',
    instructions:
        '1. Blend mango, milk, ice cream/yogurt.\n2. Sweeten to taste.\n3. Serve chilled.',
    category: 'milkshake',
  ),

  Coffee(
    id: 'matcha_latte',
    name: 'Matcha Latte',
    description: 'Green tea latte with milk.',
    imageUrl: 'https://cdn.pixabay.com/photo/2020/05/22/21/51/matcha-5207290_1280.jpg',
    ingredients: '• Matcha powder 2 tsp\n• Milk 200 ml\n• Sweetener optional',
    instructions:
        '1. Whisk matcha with hot water.\n2. Steam milk.\n3. Pour milk into matcha.\n4. Sweeten if desired.',
    category: 'matcha',
  ),

  Coffee(
    id: 'iced_latte',
    name: 'Iced Latte',
    description: 'Cold espresso with milk and ice.',
    imageUrl: 'https://cdn.pixabay.com/photo/2024/03/28/07/42/drink-8660449_960_720.jpg',
    ingredients: '• Espresso 1–2 shots\n• Cold milk 200 ml\n• Ice cubes',
    instructions:
        '1. Fill glass with ice.\n2. Brew espresso over ice.\n3. Add cold milk.\n4. Serve immediately.',
    category: 'iced',
  ),

];
