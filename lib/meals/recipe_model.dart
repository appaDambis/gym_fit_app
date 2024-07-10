class Recipe {
  final String name;
  final String image;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final String videoLink;

  Recipe({
    required this.name,
    required this.image,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.videoLink,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      ingredients: List<String>.from(json['ingredients']),
      instructions: List<String>.from(json['instructions']),
      videoLink: json['videoLink'],
    );
  }
}

class RecipeCategory {
  final String type;
  final List<Recipe> recipes;

  RecipeCategory({required this.type, required this.recipes});

  factory RecipeCategory.fromJson(Map<String, dynamic> json) {
    var recipesList = json['recipes'] as List;
    List<Recipe> recipes = recipesList.map((i) => Recipe.fromJson(i)).toList();
    return RecipeCategory(
      type: json['type'],
      recipes: recipes,
    );
  }
}
