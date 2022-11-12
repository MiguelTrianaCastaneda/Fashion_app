import 'package:fashion_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class NewItemView extends StatelessWidget {
  const NewItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "New Items",
            style: AppTextTheme.newItems(),
          ),
        )
      ],
    );
  }
}
