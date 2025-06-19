import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _veganFilterSet = false;
  var _vegetarianFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtros'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFilterSet = isChecked;
              });
            },
            title: Text(
              'Sem glúten',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              'Inclui apenas refeições sem glúten',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 32, right: 20),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
            title: Text(
              'Sem lactose',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              'Inclui apenas refeições sem lactose',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 32, right: 20),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFilterSet = isChecked;
              });
            },
            title: Text(
              'Vegano',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              'Inclui apenas refeições veganas',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 32, right: 20),
          ),
          SwitchListTile(
            value: _vegetarianFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegetarianFilterSet = isChecked;
              });
            },
            title: Text(
              'Vegetariano',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            subtitle: Text(
              'Inclui apenas refeições vegetarianas',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: EdgeInsets.only(left: 32, right: 20),
          ),
        ],
      ),
    );
  }
}
