
import 'package:flutter/material.dart';
import 'package:ecommerce_eleven_grade/preferences/preferences.dart';

part 'sections/header_section.dart';
part 'sections/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _HeaderSection(),
        SizedBox(height: 30,),
        _CategorySection(),
      ],
    );
  }
}

