import 'package:flutter/material.dart';

import '../../../../preferences/preferences.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        emptyMessage(),
      ],
    );
  }
 

  Expanded emptyMessage() {
    return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/loveImage.png', width: 80,),
            const SizedBox(height: 20,),
            const Text(' You don\'t have dream shoes?', style: TextStyle(
                color: AppColor.whiteText,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 12,),
            const Text('Let\'s find your favorite shoes', style: TextStyle(
                color: AppColor.silverText,
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.primaryColor
              ),
              child: const Text('Explore Store', style: TextStyle(
                color: AppColor.whiteText,
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
            ),
          ],
        ),
      );
  }

  AppBar header() {
    return AppBar(
        backgroundColor: AppColor.primaryBackground,
        title: const Text('Message Support', style: TextStyle(
            color: AppColor.whiteText,
            fontSize: 18,
            fontWeight: FontWeight.w600
        ),),
      );
  }
}
