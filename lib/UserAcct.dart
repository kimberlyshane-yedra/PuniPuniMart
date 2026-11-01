import 'package:flutter/material.dart';
//testinf lang patra di error sa home page te
class UserAcctScreen extends StatelessWidget {
  const UserAcctScreen({super.key});//huwag babaguhin si UserAcctScreen na name connected sa homepage 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('User Account'),
        backgroundColor: const Color(0xFFF29191),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'User Account Screen (Testing)',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}