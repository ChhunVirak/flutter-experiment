import 'package:flutter/material.dart';

class CartDetailScreen extends StatelessWidget {
  const CartDetailScreen({super.key});

  static const String routeName = 'cart_detail-screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('cart detail Screen'),),
      body: Container(),
    );
  }
}