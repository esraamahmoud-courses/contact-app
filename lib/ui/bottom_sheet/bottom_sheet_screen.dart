import 'package:contact_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/theme/elevated_button.dart';
import '../../core/theme/text_form_field.dart';
import '../../core/theme/user_info_example.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(size.height * .02),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: size.height * .02,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              Expanded(
                flex: 3,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: AppColors.gold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/image-not-preview.png",
                    height: size.height * .170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    userInfoExample(data: "User Name"),
                    userInfoExample(data: "example@email.com"),
                    userInfoExample(data: "+200000000000"),
                  ],
                ),
              ),
            ],
          ),
          Column(
            spacing: size.height * .01,
            children: [
              textFormField(data: "Enter User Name "),
              textFormField(data: "Enter User Email "),
              textFormField(data: "Enter User Phone"),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: elevatedButton(data: "Enter user"),
          ),
        ],
      ),
    );
  }
}
