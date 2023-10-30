import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styler/config/misc.dart';
import 'package:styler/config/sizes.dart';
import 'package:styler/custom_widgets/product_card.dart';
import 'package:styler/ui/cart/pages/cart_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 2),
          child: AppBarUnderlineWIdget(),
        ),
        automaticallyImplyLeading: false,
        title: const Text('Styler'),

        // Appbar Options
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Wishlist',
            icon: const Icon(Icons.list),
          ),
          IconButton(
            onPressed: () => Get.to<Widget>(const CartPage()),
            tooltip: 'My Cart',
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'My Profile',
            icon: const Icon(Icons.person),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: PageSizes.pagePaddingX,
            vertical: 12,
          ),
          children: [],
        ),
      ),
    );
  }
}
