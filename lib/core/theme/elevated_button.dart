import 'package:contact_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

ElevatedButton elevatedButton({
  String data = "",
  Function? onTap,
  double? size,
  Color? color,
  Icon? icon,
  Color? fontColor,
  FontWeight? fontWeight,
}) {
  return ElevatedButton(
    onPressed: () {
      onTap?.call();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? AppColors.gold,
      foregroundColor: AppColors.darkBlue,
      textStyle: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: fontColor,
      ),
      alignment: Alignment.center,
      overlayColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(16),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) ...[icon, const SizedBox(width: 8)],
        Text(data, style: TextStyle(color: fontColor)),
      ],
    ),
  );
}
