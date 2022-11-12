import 'package:fashion_app/ui/models/products_category.dart';
import 'package:http/http.dart' as http;

class ProductsCategoryService {
  Future<List<ProductsCategory>?> getProductsCategories(int idCategory) async {
    var client = http.Client();
    var uri = Uri.parse(
        'https://api.escuelajs.co/api/v1/categories/$idCategory/products');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return productsCategoryFromJson(json);
    }
    return null;
  }
}
