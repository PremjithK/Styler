import 'package:flutter/material.dart';

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
            onPressed: () {},
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
      body: const SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('Welcome to styler.'),
            ),
          ],
        ),
      ),
    );
  }
}
