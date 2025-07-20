import 'package:book_app/Features/Home/presentation/views/widgets/similer_list_view.dart';
import 'package:book_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like', style: Styles.textStyle20),
          ),
          SizedBox(height: 20),

          SimilerListView(),
        ],
      ),
    );
  }
}
