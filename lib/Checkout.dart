import 'package:flutter/material.dart';
//testinf lang to para di error sa home page
class CheckoutScreen extends StatelessWidget {// huwag bagyyuhin namin na CheckoutScreen
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: const Color(0xFFF29191),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Checkout Screen (Testing)',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}