import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget buildRecipe(Recipe recipe) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image(
              image: ExactAssetImage(recipe.image),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              recipe.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  print(Recipe.samples[index].title);
                },
                child: buildRecipe(Recipe.samples[index]),
              ),
            );
          },
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}
