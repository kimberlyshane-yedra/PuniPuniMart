import 'package:flutter/material.dart';
// for testing lang teeeee hahahaha
class CatalogScreen extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productDescription;
  final String productImage;

  const CatalogScreen({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: const Color(0xFFF29191),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[200],
                      child: const Icon(Icons.image, size: 50, color: Colors.grey),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),

            // Product Name
            Text(
              productName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Product Price
            Text(
              productPrice,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xFFF29191),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),

            // Test Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF29191),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Successfully added $productName to cart!')),
                );
              },
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}