import 'package:flutter/material.dart';
import 'package:ecommerce_eleven_grade/preferences/preferences.dart';

import '../../models/product_model.dart';

part 'sections/header_section.dart';
part 'sections/all_shoes.dart';
part 'sections/running.dart';
part 'sections/basketball.dart';
part 'sections/football.dart';
part 'sections/training.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categoryData = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
    'Football',
  ];

  List<Widget> content = const [
    AllShoes(),
    RunningShoes(),
    TrainingShoes(),
    BasketballShoes(),
    FootballShoes(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _HeaderSection(),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 83,
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? AppColor.primaryColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedIndex == index ? Colors.transparent : const Color(0xff302F37),
                        )),
                    child: Center(
                        child: Text(
                      categoryData[index],
                      style: TextStyle(
                        color: selectedIndex == index ? AppColor.whiteText : AppColor.greyText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: categoryData.length,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        content[selectedIndex]
      ],
    );
  }
}
