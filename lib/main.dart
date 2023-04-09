import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screen/home_screens.dart';
import './models/category.dart';
import './screen/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final categoModel = Categories();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.aboreto().fontFamily,
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(
        categories: categoModel.list,
      ),
      routes: {
        //Ustoz shu CatetgoryMealsScreen da xaxtolik borda Strign Null deydi qaysi biri  busa xay bilmadim ;
        // boshiga ishladi lekin 2,3 run dan keyin ishlamadi nimaga wu ???
        '/category-meals': (context) =>  CatetgoryMealsScreen(),
      },
    );
  }
}
