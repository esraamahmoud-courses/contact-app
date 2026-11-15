import 'package:contact_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

TextFormField textFormField({String data = ""}) {
  return TextFormField(
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
    ),
    style: TextStyle(fontSize: 16, fontWeight: .normal),
    cursorColor: AppColors.gold,
  );
}
