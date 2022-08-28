import 'package:flutter/material.dart';

import 'package:cookbook/model/recipe.dart';
import 'package:cookbook/ui/widgets/recipe_title.dart';
import 'package:cookbook/ui/screens/detail.dart';
import 'package:cookbook/ui/widgets/recipe_image.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard(
      {required this.recipe});

  @override
  Widget build(BuildContext context) {
    
    // Padding _buildTitleSection() {
    //   return Padding(
    //     padding: EdgeInsets.all(15.0),
    //     child: Column(
    //       // Default value for crossAxisAlignment is CrossAxisAlignment.center.
    //       // We want to align title and description of recipes left:
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Text(
    //           recipe.name,
    //         ),
    //         // Empty space:
    //         SizedBox(height: 10.0),
    //       ],
    //     ),
    //   );
    // }

    return GestureDetector(
      onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => new DetailScreen(recipe),
            ),
          ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // We overlap the image and the button by
              // creating a Stack object:
              Stack(
                children: <Widget>[
                  RecipeImage(recipe.imageURL),
                ],
              ),
              RecipeTitle(recipe,15),
            ],
          ),
        ),
      ),
    );
  }
}