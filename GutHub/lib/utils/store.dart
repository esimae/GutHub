import 'package:cookbook/model/recipe.dart';

List<Recipe> getRecipes() {
  return [
    Recipe(
      id: '0',
      type: RecipeType.food,
      name: 'Oatmeal with Fruits',
      ingredients: [
        'oats',
        'milk',
        'Fruits of your choice',
        'Honey',
        'Cinnamon',
      ],
      quantity: [
        '100g',
        '100ml',
        '',
        '',
        'pinch',
      ],
      method: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
    ),
    Recipe(
      id: '1',
      type: RecipeType.food,
      name: 'Pancakes with Maple Syrup',
      ingredients: [
        'eggs',
        'milk',
        'flour',
        'butter',
        'Baking powder',
        'Maple syrup',
      ],
      quantity: [
        '2',
        '100ml',
        '50g',
        '10g',
        'pinch',
        '',
      ],
      method: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1517741991040-91338b176129?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f65c4032c1b3131f829d464fb979f5e8&auto=format&fit=crop&w=675&q=80',
    ),
    Recipe(
      id: '2',
      type: RecipeType.drink,
      name: 'Strawberry Juice',
      ingredients: [
        'strawberries',
        'water',
        'sugar',
        'lemon juice',
      ],
      quantity: [
        '100g',
        '500ml',
        '2 teaspoons',
        'half a lemon',
      ],
      method: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c8ffc5bbb3719b5a46ee703acb0a0ac5&auto=format&fit=crop&w=634&q=80',
    ),
  ];
}
