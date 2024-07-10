import 'package:flutter/material.dart';
import 'package:gym_app/meals/recipe_model.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(recipe.name),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                'assets/img/background.jpg', // Background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Hero(
                  tag:
                      'recipeImage_${recipe.image}', // Same unique tag as RecipeCard
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      recipe.image,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          recipe.description,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Divider(thickness: 1),
                        ...recipe.ingredients.map((ingredient) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                '- $ingredient',
                                style: const TextStyle(fontSize: 16),
                              ),
                            )),
                        const SizedBox(height: 20),
                        const Text(
                          'Instructions',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Divider(thickness: 1),
                        ...recipe.instructions.map((instruction) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                '• $instruction',
                                style: const TextStyle(fontSize: 16),
                              ),
                            )),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _launchURL(context, recipe.videoLink);
                            },
                            child: const Text('Watch Video'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(BuildContext context, String url) async {
    if (url.isEmpty) {
      // Show error message if URL is empty
      _showErrorDialog(
          context, 'Invalid URL', 'The video URL is not available.');
      return;
    }

    final Uri uri = Uri.parse(url);
    if (await launchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Show error message if URL cannot be launched
      _showErrorDialog(
          context, 'Could not launch URL', 'The URL could not be launched.');
    }
  }

  void _showErrorDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
