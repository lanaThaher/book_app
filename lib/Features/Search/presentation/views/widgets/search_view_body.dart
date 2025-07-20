import 'package:book_app/Features/Search/presentation/views/widgets/custom_search_text_feild.dart';
import 'package:book_app/Features/Search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 10),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
