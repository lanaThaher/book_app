import 'package:book_app/Features/Home/presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/core/utils/functions/app_router.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
