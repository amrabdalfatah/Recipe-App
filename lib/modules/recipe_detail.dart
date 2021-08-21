import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail(this.recipe, {Key? key}) : super(key: key);
  final Recipe recipe;

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.image),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.recipe.title,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                itemBuilder: (context, index) {
                  return Text(
                    '${widget.recipe.ingredients[index].quantity * _sliderValue} ${widget.recipe.ingredients[index].name}',
                  );
                },
                itemCount: widget.recipe.ingredients.length,
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderValue * widget.recipe.serving} serving',
              value: _sliderValue.toDouble(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
