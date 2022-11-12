import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextStyle searchStyle({Color color = AppColors.kSearchColor}) {
    return TextStyle(
      fontSize: 16.0,
      color: color,
    );
  }

  static TextStyle discountStyle({Color color = Colors.black}) {
    return TextStyle(fontSize: 24.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle discountStyleSub({Color color = Colors.black}) {
    return TextStyle(fontSize: 12.0, color: color);
  }

  static TextStyle newItems({Color color = Colors.black}) {
    return TextStyle(fontSize: 20.0, color: color, fontWeight: FontWeight.bold);
  }

  static TextStyle price({Color color = Colors.black}) {
    return TextStyle(fontSize: 13.0, color: color, fontWeight: FontWeight.bold);
  }
}
