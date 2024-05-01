class Product {
  final String name, image;
  final int price;

  Product({required this.name, required this.image, required this.price});
}

List<Product> products = [
  Product(name: 'Espresso', image: 'assets/espresso.svg', price: 140),
  Product(name: 'Cappuccino', image: 'assets/cappuccino.svg', price: 120),
  Product(name: 'Macchiato', image: 'assets/macchiato.svg', price: 135),
  Product(name: 'Mocha', image: 'assets/mocha.svg', price: 145),
  Product(name: 'Latte', image: 'assets/latte.svg', price: 110),
];