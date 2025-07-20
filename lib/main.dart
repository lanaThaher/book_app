import 'package:book_app/Features/Home/data/repo/home_repo.dart';
import 'package:book_app/Features/Home/presentation/Manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/Home/presentation/Manager/newest_books_cubit/newset_books_cubit.dart';
import 'package:book_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/functions/app_router.dart';
import 'package:book_app/core/utils/functions/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepo>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRepo>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
