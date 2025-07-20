import 'package:book_app/core/utils/functions/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDelailsAppBar extends StatelessWidget {
  const BookDelailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_checkout_outlined, size: 25),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop(AppRouter.kHomeView);
            },
            icon: Icon(Icons.close, size: 25),
          ),
        ],
      ),
    );
  }
}
