import 'package:book_app/Features/Home/presentation/Manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerListView extends StatelessWidget {
  const SimilerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: ListView.builder(
                itemCount: state.books.length,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  height: 100,
                  child: CustomBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
