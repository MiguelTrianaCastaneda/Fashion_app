import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNavigationBarView extends StatelessWidget {
  const ButtonNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90.0,
        decoration: BoxDecoration(
          color: AppColors.knNavigationBar,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              "assets/icons/home.svg",
              color: AppColors.kBottonNavigation,
              width: 25.0,
              height: 25.0,
            ),
            SvgPicture.asset(
              "assets/icons/favorite.svg",
              color: AppColors.kBottonNavigation,
              width: 25.0,
              height: 25.0,
            ),
            SvgPicture.asset(
              "assets/icons/shopping.svg",
              color: AppColors.kBottonNavigation,
              width: 25.0,
              height: 25.0,
            ),
            SvgPicture.asset(
              "assets/icons/person.svg",
              color: AppColors.kBottonNavigation,
              width: 25.0,
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}
