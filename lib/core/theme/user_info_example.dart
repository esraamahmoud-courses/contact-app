import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

Column userInfoExample({String data = ""}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 6,
    children: [
      Text(data, style: titleMedium(weight: .w500)),
      Divider(color: AppColors.gold, endIndent: 18),
    ],
  );
}
