import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart' as nav;
import 'package:styler/config/misc.dart';
import 'package:styler/config/sizes.dart';
import 'package:styler/ui/cart/view/cart_page.dart';
import 'package:styler/ui/dashboard/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Get.to(
            () => const CartPage(),
            transition: nav.Transition.rightToLeft,
          );
        }
        if (state is HomeNavigateToProfilePageActionState) {
          Get.to(
            () => const CartPage(),
            transition: nav.Transition.upToDown,
          );
        }
        if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ));
        }
      },
      builder: (context, state) {
        // UI
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
                onPressed: () {
                  homeBloc.add(HomeCartButtonNavigateEvent());
                },
                tooltip: 'My Cart',
                icon: const Icon(Icons.shopping_cart),
              ),
              IconButton(
                onPressed: () {
                  homeBloc.add(HomeProfileButtonNavigateEvent());
                },
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
              children: const [],
            ),
          ),
        );
      },
    );
  }
}
