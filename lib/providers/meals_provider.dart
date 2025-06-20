import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/meals_mockups.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
