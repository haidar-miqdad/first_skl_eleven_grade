

import 'package:flutter/material.dart';

import '../../../preferences/colors.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, ),
      title: Text(title, style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.silverText
      ),),
      onTap: () {},
      trailing: const Icon(Icons.arrow_forward_ios, size:20,),
    );
  }
}

