import 'package:ecommerce_eleven_grade/preferences/colors.dart';
import 'package:ecommerce_eleven_grade/preferences/icons.dart';
import 'package:flutter/material.dart';

import '../../widgets/profile_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Image.asset('assets/images/profile.png', width: 64,),
                const SizedBox(width: 16,),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hallo, Alex', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteText,
                        fontSize: 24
                      ),),
                      Text('@alexkeinn', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greyText
                      ),)
                    ],
                  ),
                ),
                const Icon(CustomIcon.exit, color: Color(0xffED6363))
              ],
            ),
          ),
          const SizedBox(height: 50,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Text('Account', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColor.whiteText
                ),),
              ),
              SizedBox(height: 16,),
              ProfileItem(title: 'Edit Profile'),
              ProfileItem(title: 'Your Orders'),
              ProfileItem(title: 'Help'),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Text('General', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteText
                ),),
              ),
              SizedBox(height: 16,),
              ProfileItem(title: 'Privacy & Policy'),
              ProfileItem(title: 'Term of Service'),
              ProfileItem(title: 'Rate App'),
            ],
          )

        ],
      ),
    );
  }
}

