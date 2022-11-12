import 'package:fashion_app/ui/models/products_category.dart';
import 'package:fashion_app/ui/services/products_category_service.dart';
import 'package:fashion_app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ProductsCategoryView extends StatefulWidget {
  final int categoryid;
  //const ProductsCategoryView({super.key,this.serverIP});

  // ignore: non_constant_identifier_names
  const ProductsCategoryView({Key? key, required this.categoryid})
      : super(key: key);

  @override
  State<ProductsCategoryView> createState() => _ProductsCategoryViewState();
}

class _ProductsCategoryViewState extends State<ProductsCategoryView> {
  List<ProductsCategory>? productsCategory;
  List<String> imageProducts = [];

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
  }

  Future getProductsCategory() async {
    productsCategory = await ProductsCategoryService()
        .getProductsCategories(const ProductsCategoryView(
      categoryid: 1,
    ).categoryid);
    if (productsCategory != null) {
      for (var pcatego in productsCategory!) {
        imageProducts.add(pcatego.images[0]);
      }

      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getProductsCategory();
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageProducts.length,
          itemBuilder: (context, index) {
            if (productsCategory != null) {
              return Positioned(
                  left: 20,
                  top: 20,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                          width: 100.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  NetworkImage(imageProducts[index].toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70.0, top: 10.0),
                                  child: Container(
                                    width: 20.0,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.favorite_border_rounded,
                                      size: 15,
                                    ),
                                  )),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: 100,
                            child: Text(
                              productsCategory![index].title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 9.0,
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${productsCategory![index].price}",
                            style: AppTextTheme.price(),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Text(
                            "+",
                            style: AppTextTheme.price(),
                          )
                        ],
                      )
                    ],
                  ));
            } else {
              return const Text("No hay datos");
            }
          }),
    );
  }
}
