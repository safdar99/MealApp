import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../models/meal.dart';

class FavouritesScreen extends StatelessWidget {
 final List<Meal> favoriteMeals;

 const FavouritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
    return Center(child: Text('You have no favorites selected please add some!!'));
    } else {
return ListView.builder(
          itemBuilder: (context, index) {
            final meal = favoriteMeals[index];
            return MealItem(
              id: meal.id,
              title: meal.title,
              imageUrl: meal.imageUrl,
              affordability: meal.affordability,
              complexity: meal.complexity,
              duration: meal.duration,
            );
          },
          itemCount: favoriteMeals.length,
        );
    }
  }
}