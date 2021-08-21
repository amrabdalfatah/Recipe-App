class Recipe {
  final String title;
  final String image;
  List<Ingredients> ingredients = [];
  final int serving;

  Recipe({
    required this.title,
    required this.image,
    required this.ingredients,
    required this.serving,
  });
}

class Ingredients {
  final String name;
  final double quantity;

  Ingredients(this.name, this.quantity);
}
