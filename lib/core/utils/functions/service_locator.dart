import 'package:book_app/Features/Home/data/repo/home_repo.dart';
import 'package:book_app/Features/Home/data/repo/home_repo_implement.dart';
import 'package:book_app/core/utils/functions/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImplement(apiServices: getIt.get<ApiServices>()),
  );
}
