import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key, this.body, this.buttonNavigationBar})
      : super(key: key);

  final Widget? body;
  final Widget? buttonNavigationBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.kAppBackground,
      ),
      body: body,
      bottomNavigationBar: buttonNavigationBar,
    );
  }
}
