import 'package:book_app/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        // itemBuilder: (context, index) => BestSellerItem(),
        itemBuilder: (context, index) => Text(''),
      ),
    );
  }
}
