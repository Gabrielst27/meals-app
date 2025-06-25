import 'package:flutter_riverpod/flutter_riverpod.dart';

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
