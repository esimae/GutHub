
enum RecipeType {
  food,
  drink,
}

class Recipe {
  final String id;
  final RecipeType type;
  final String name;
  final List<String> ingredients;
  final List<String> quantity;
  final List<String> method;
  final String imageURL;

  const Recipe({
    // required added as quickfix to all
    required this.id,
    required this.type,
    required this.name,
    required this.ingredients,
    required this.quantity,
    required this.method,
    required this.imageURL,
  });

  Recipe.fromMap(Map<String, dynamic> data, String id)
      : this(
          id: id,
          type: RecipeType.values[data['type']],
          name: data['name'],
          ingredients: new List<String>.from(data['ingredients']),
          quantity: new List<String>.from(data['quantity']),
          method: new List<String>.from(data['method']),
          imageURL: data['image'],
        );
}