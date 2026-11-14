import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../core/content/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/app_logo.png",
          width: size.width * .3,
        ),
        backgroundColor: AppColors.darkBlue,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/empty_home.png"),
              Text(HomeContent.emptyContent, style: titleLarge(weight: .w500)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.gold,
        child: Icon(Icons.add, color: AppColors.darkBlue),
      ),
    );
  }
}
