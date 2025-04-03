import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var products = [].obs;
  var filteredProducts = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      final response = await http
          .get(Uri.parse('https://automationexercise.com/api/productsList'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['products'] != null) {
          products.assignAll(data['products']);
          filteredProducts.assignAll(products);
          isLoading(false);
        }
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  void filterProducts(String query) {
    filteredProducts.assignAll(
      products
          .where((product) =>
              product['name'].toLowerCase().contains(query.toLowerCase()))
          .toList(),
    );
  }
}
