// import 'package:contact_app/core/theme/app_colors.dart';
// import 'package:flutter/material.dart';
//
// TextFormField textFormField({String data = ""}) {
//   return TextFormField(
//     decoration: InputDecoration(
//       hintText: data,
//       fillColor: AppColors.darkBlue,
//
//       hintStyle: TextStyle(color: AppColors.lightBlue, fontSize: 16),
//       contentPadding: EdgeInsets.all(16),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(16),
//         borderSide: BorderSide(width: 2, color: AppColors.gold),
//       ),
//       errorBorder: OutlineInputBorder(
//         borderSide: BorderSide(width: 2, color: AppColors.red),
//       ),
//
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(16),
//         borderSide: const BorderSide(color: AppColors.gold, width: 1.0),
//       ),
//     ),
//     style: TextStyle(
//       fontSize: 16,
//       fontWeight: .normal,
//       color: AppColors.lightBlue,
//     ),
//     cursorColor: AppColors.gold,
//   );
// }

import 'package:flutter/material.dart';

import 'app_colors.dart';

class ContactTextForm extends StatelessWidget {
  final String? data;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const ContactTextForm({
    super.key,
    this.data,
    this.controller,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        hintText: data,
        fillColor: AppColors.darkBlue,

        hintStyle: TextStyle(color: AppColors.lightBlue, fontSize: 16),
        contentPadding: EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 2, color: AppColors.gold),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: AppColors.red),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.0),
        ),
      ),
      style: TextStyle(
        fontSize: 16,
        fontWeight: .normal,
        color: AppColors.lightBlue,
      ),
      cursorColor: AppColors.gold,
    );
  }
}
