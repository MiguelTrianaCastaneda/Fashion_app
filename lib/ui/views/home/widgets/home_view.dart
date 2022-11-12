import 'package:fashion_app/ui/components/template/custom_scaffold.dart';
import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:fashion_app/ui/views/home/widgets/button_Navigation_Bar_view.dart';
import 'package:fashion_app/ui/views/home/widgets/categories_view.dart';
import 'package:fashion_app/ui/views/home/widgets/discount_view.dart';
import 'package:fashion_app/ui/views/home/widgets/newitems_view.dart';
import 'package:fashion_app/ui/views/home/widgets/products_category_view.dart';
import 'package:fashion_app/ui/views/home/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
          children: const [
            SearchView(),
            CategoriesView(),
            DiscountView(),
            NewItemView(),
            ProductsCategoryView(
              categoryid: 1,
            ),
          ],
        ),
        buttonNavigationBar: const ButtonNavigationBarView());
  }
}
