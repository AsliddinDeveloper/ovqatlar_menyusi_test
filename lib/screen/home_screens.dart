import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.categories}) : super(key: key);
  final List<Category> categories;

  // final Function goToCategoryMealsScreen;

  // required this.goToCategoryMealsScreen,

  //  final Categories categories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Ovqatlar Menyusi",
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: GridView(
        // scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categories
            .map((category) => CategoryItem(category: category))
            .toList(),
      ),
    );
  }
}
