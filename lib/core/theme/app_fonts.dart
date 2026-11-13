import 'package:flutter/material.dart';
import 'app_colors.dart';

TextStyle titleLarge ({double? size, FontWeight? weight, Color? color}){
  return TextStyle(
    fontSize: size ?? 20,
    fontWeight: weight ?? .bold,
    color: color ?? AppColors.gold,
  );
}

TextStyle titleMedium ({double? size, FontWeight? weight, Color? color}){
  return TextStyle(
    fontSize: size ?? 16,
    fontWeight: weight ?? .bold,
    color: color ?? AppColors.gold,
  );
}

TextStyle bodySmall ({double? size, FontWeight? weight, Color? color}){
  return TextStyle(
    fontSize: size ?? 10,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.gold,
  );
}
