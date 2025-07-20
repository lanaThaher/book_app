import 'dart:ffi';

import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_delails_app_bar.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_detail_section.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_item_list_view.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_rating_item.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/buttom_action_box.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/similer_book_section.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/similer_list_view.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookDelailsAppBar(),
                BookDetailsSection(bookModel: bookModel),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SimilerBookSection(),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
