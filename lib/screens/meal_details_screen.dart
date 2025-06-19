import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => onToggleFavorite(meal),
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 8,
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 32),
          Divider(),
          const SizedBox(height: 16),
          Text(
            'Ingredientes',
            style:
                Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          for (final ingredient in meal.ingredients)
            Text(
              ingredient,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(
                  context,
                ).colorScheme.onPrimaryContainer,
              ),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 32),
          Divider(),
          const SizedBox(height: 16),
          Text(
            'Preparo',
            style:
                Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          for (final step in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 16,
              ),
              child: Text(
                '- $step',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
