import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showing_data/model/product_controller.dart';
import 'product_details.dart';

class ProductListScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: productController.filterProducts,
              decoration: InputDecoration(
                hintText: 'Search Products...',
                prefixIcon: Icon(Icons.search, color: Colors.blueAccent),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: productController.filteredProducts.length,
                itemBuilder: (context, index) {
                  var product = productController.filteredProducts[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart, color: Colors.blueAccent),
                      title: Text(
                        product['name'],
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      subtitle: Text(
                        'Price: \$${product['price']}',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
                      onTap: () {
                        Get.to(() => ProductDetailsScreen(product: product));
                      },
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}