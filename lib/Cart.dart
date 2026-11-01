import 'package:flutter/material.dart';
//for testing para di mag error sa home page 
class CartScreen extends StatelessWidget {// huwag baguhin ang CartScreen na name te
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        backgroundColor: const Color(0xFFF29191),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Cart Screen (Testing)',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}