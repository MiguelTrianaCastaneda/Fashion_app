import 'package:fashion_app/ui/models/category.dart';
import 'package:fashion_app/ui/services/category_service.dart';
import 'package:fashion_app/ui/theme/app_colors.dart';
import 'package:fashion_app/ui/views/home/widgets/products_category_view.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<Category>? category;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  Future getCategories() async {
    category = await CategoryService().getCategories();
    if (category != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category?.length,
            itemBuilder: (context, index) {
              if (category != null) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          splashColor: Colors.yellow,
                          highlightColor: AppColors.kSearchColor,
                          borderRadius: BorderRadius.circular(20.0),
                          onTap: () {
                            setState(() {
                              ProductsCategoryView(
                                  categoryid: category![index].id);
                            });
                          },
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(category![index].image),
                          ),
                        )),
                    Text(
                      category![index].name,
                      style:
                          const TextStyle(fontSize: 10.0, color: Colors.black),
                    )
                  ],
                );
              } else {
                return const Text("No hay datos");
              }
            }));
  }
}
