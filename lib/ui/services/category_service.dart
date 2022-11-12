import 'package:fashion_app/ui/models/category.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<Category>?> getCategories() async {
    var client = http.Client();
    var uri = Uri.parse('https://api.escuelajs.co/api/v1/categories');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return categoryFromJson(json);
    }
    return null;
  }
}
