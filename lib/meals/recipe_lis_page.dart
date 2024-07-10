import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gym_app/meals/recipe_data.dart';
import 'package:gym_app/meals/recipe_detail_page.dart';
import 'package:gym_app/meals/recipe_model.dart';

class RecipeListPage extends StatelessWidget {
  final bool isVegetarian;

  RecipeListPage({required this.isVegetarian});

  List<Recipe> _loadRecipes() {
    final List<dynamic> data = json.decode(recipeData);
    final List<RecipeCategory> categories =
        data.map((item) => RecipeCategory.fromJson(item)).toList();
    final RecipeCategory selectedCategory = categories.firstWhere((category) =>
        category.type == (isVegetarian ? 'vegetarian' : 'nonVegetarian'));
    return selectedCategory.recipes;
  }

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = _loadRecipes();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
            isVegetarian ? 'Vegetarian Recipes' : 'Non-Vegetarian Recipes'),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.7, // Adjust opacity as needed
              child: Image.asset(
                'assets/img/background.jpg', // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent, // Ensure the container is transparent
            ),
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return RecipeCard(recipe: recipe);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      shadowColor: Colors.black54,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetailPage(recipe: recipe),
            ),
          );
        },
        child: Column(
          children: [
            Hero(
              tag:
                  'recipeImage_${recipe.image}', // Unique tag for each recipe image
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(
                  recipe.image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(15)),
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey[200]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    recipe.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
