import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showing_data/notification/notification_service.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Map product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.shopping_bag,
                size: 100,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${product['name']}',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Price: \$${product['price']}',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Category: ${product['category']}',
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  NotificationService.showNotification(
                      title: "Cart Update", body: "Product added to cart!");
                },
                icon: Icon(Icons.shopping_cart),
                label: Text("Add to Cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
