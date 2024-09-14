import 'package:booklyapp/core/network/api_service.dart';
import 'package:booklyapp/featuers/home/data/repo/home_repo_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final GetIt getIt = GetIt.instance;

void setupserviceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
