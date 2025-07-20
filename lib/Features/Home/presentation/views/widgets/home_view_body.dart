import 'package:book_app/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_item_list_view.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/functions/assets.dart' show Assets;
import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BookItemListView(),
                Text('Best Seller', style: Styles.textStyle24),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }
}
