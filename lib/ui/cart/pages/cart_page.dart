import 'package:flutter/material.dart';
import 'package:styler/config/misc.dart';
import 'package:styler/config/sizes.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: true,
        title: const Text('My Cart'),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 2),
          child: AppBarUnderlineWIdget(),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: PageSizes.pagePaddingX),
        ),
      ),
    );
  }
}
