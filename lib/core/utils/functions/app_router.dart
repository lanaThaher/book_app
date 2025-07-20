import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repo/home_repo.dart';
import 'package:book_app/Features/Home/data/repo/home_repo_implement.dart';
import 'package:book_app/Features/Home/presentation/Manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:book_app/Features/Home/presentation/views/home_view.dart';
import 'package:book_app/Features/Search/presentation/views/search_view.dart';
import 'package:book_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:book_app/core/utils/functions/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
