import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:fashion_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountView extends StatelessWidget {
  const DiscountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            top: 30.0, right: 30.0, left: 30.0, bottom: 20.0),
        child: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20.0),
              child: Row(children: [
                Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: AppColors.kAppBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(
                      "assets/icons/discount.svg",
                      width: 10.0,
                      height: 10.0,
                    )),
                const SizedBox(
                  width: 40.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      "50% OFF",
                      style: AppTextTheme.discountStyle(color: Colors.black),
                    ),
                    Text(
                      textAlign: TextAlign.left,
                      "on all women's shoes",
                      style: AppTextTheme.discountStyleSub(color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  width: 100.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.kSearchColor,
                  size: 15.0,
                ),
              ])),
        ));
  }
}
