import 'package:contact_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

ElevatedButton elevatedButton({String data = ""}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.gold,
      foregroundColor: AppColors.darkBlue,
      textStyle: TextStyle(fontSize: 20, fontWeight: .normal),
      alignment: Alignment.center,
      overlayColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(16),
    ),
    child: Text(data),
  );
}
