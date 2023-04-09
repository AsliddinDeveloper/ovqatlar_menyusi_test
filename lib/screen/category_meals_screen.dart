import 'package:flutter/material.dart';

class CatetgoryMealsScreen extends StatefulWidget {
   const CatetgoryMealsScreen({Key? key}) : super(key: key);

  @override
  State<CatetgoryMealsScreen> createState() => _CatetgoryMealsScreenState();
}

class _CatetgoryMealsScreenState extends State<CatetgoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    
  final categoryTitle = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          // "Ramazon Muborak", // "categoryName",
          categoryTitle,
        ),
      ),
      body: const Center(
        child:  Text("Afsuski Xozircha mahsulotlar mavjud emas"),
      ),
    );
  }
}
