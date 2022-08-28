import 'package:flutter/material.dart';

import 'package:cookbook/model/recipe.dart';
import 'package:cookbook/utils/store.dart';
import 'package:cookbook/ui/widgets/recipe_card.dart';
import 'package:cookbook/model/state.dart';
import 'package:cookbook/state_widget.dart';
import 'package:cookbook/ui/screens/login.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // New member of the class:
  List<Recipe> recipes = getRecipes();

  @override
  Widget build(BuildContext context) {
    // New method:
    Column _buildRecipes(List<Recipe> recipesList) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: recipesList.length,
              itemBuilder: (BuildContext context, int index) {
                return new RecipeCard(
                  recipe: recipesList[index],
                );
              },
            ),
          ),
        ],
      );
    }

    const double _iconSize = 20.0;

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: PreferredSize(
          // We set Size equal to passed height (50.0) and infinite width:
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: const Color(0xFFED9B40),
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.restaurant, size: _iconSize))
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            // Replace placeholders:
            children: [
              // Display recipes of type food:
              _buildRecipes(recipes
                  .where((recipe) => recipe.type == RecipeType.food)
                  .toList()),
            ],
          ),
        ),
      ),
    );
  
  }
}