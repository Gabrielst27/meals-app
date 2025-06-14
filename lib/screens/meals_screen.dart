import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(meal: meals[index]),
    );
    if (meals.isEmpty) {
      content = Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 128, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Oops... Não há nada aqui!',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Tente escolher uma categoria diferente.',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 64),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
