import 'package:fashion_app/ui/constant/app_constant.dart';
import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:fashion_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(
              left: kMarginApp, right: kMarginApp, bottom: 30.0),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          width: 320.0,
          height: 55.0,
          decoration: BoxDecoration(
              color: AppColors.kAppBackground,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search",
                  style:
                      AppTextTheme.searchStyle(color: AppColors.kSearchColor)),
              SvgPicture.asset(
                "assets/icons/search.svg",
                width: 25.0,
                height: 25.0,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: kMarginApp, bottom: 25.0),
          width: 30,
          height: 30,
          color: AppColors.kAppBackground,
          child: SvgPicture.asset(
            "assets/icons/filter.svg",
            width: 25.0,
            height: 25.0,
          ),
        )
      ],
    );
  }
}
