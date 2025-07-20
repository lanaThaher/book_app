import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rate,
  });
  final MainAxisAlignment mainAxisAlignment;
  final int count;
  final num rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),
        SizedBox(width: 10),
        Text('$rate', style: Styles.textStyle18),
        SizedBox(width: 6),
        Text('( $count )', style: Styles.textStyle14),
      ],
    );
  }
}
