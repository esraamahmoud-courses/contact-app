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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Stack(
            children: [
              Image.asset("assets/images/app_logo.png", width: size.width * .3),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/empty_home.png"),
                  Text(
                    HomeContent.emptyContent,
                    style: titleLarge(weight: .w500),
                  ),
                ],
              ),
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
