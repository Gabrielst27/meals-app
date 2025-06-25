import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/meals_provider.dart';

enum EFilter {
  glutenFree,
  lactoseFree,
  vegan,
  vegetarian,
}

class FiltersNotifier extends StateNotifier<Map<EFilter, bool>> {
  FiltersNotifier()
    : super({
        EFilter.glutenFree: false,
        EFilter.lactoseFree: false,
        EFilter.vegan: false,
        EFilter.vegetarian: false,
      });

  void setAllFilters(Map<EFilter, bool> filters) {
    state = filters;
  }

  void setFilter(EFilter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<EFilter, bool>>(
      (ref) => FiltersNotifier(),
    );

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  return meals.where((meal) {
    if (activeFilters[EFilter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[EFilter.lactoseFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[EFilter.vegan]! && !meal.isVegan) {
      return false;
    }
    if (activeFilters[EFilter.vegetarian]! && !meal.isVegetarian) {
      return false;
    }
    return true;
  }).toList();
});
