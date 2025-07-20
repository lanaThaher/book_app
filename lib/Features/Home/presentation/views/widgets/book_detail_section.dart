import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/book_rating_item.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/buttom_action_box.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: CustomBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
        ),
        SizedBox(height: 3),
        Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle20),
        const SizedBox(height: 6),
        BookRatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rate: bookModel.volumeInfo.averageRating ?? 0,
        ),
        SizedBox(height: 30),
        ButtonActionBox(),
      ],
    );
  }
}
