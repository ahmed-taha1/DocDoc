import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/core/networking/dio_factory.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/signup/data/repos/signup_repo.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<Apiservice>(() => Apiservice(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));   // getIt() is used to get the instance of Apiservice
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt())); // getIt() is used to get the instance of LoginRepo

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));   // getIt() is used to get the instance of Apiservice
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt())); // getIt() is used to get the instance of SignupRepo
}