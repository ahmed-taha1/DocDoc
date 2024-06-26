import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_constans.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/data/models/login_response.dart';
import 'package:doc_doc/features/signup/data/models/signup_request_body.dart';
import 'package:retrofit/http.dart';

import '../../features/signup/data/models/signup_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class Apiservice {
  factory Apiservice(Dio dio, {String baseUrl}) = _Apiservice;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signUp)
  Future<SignupResponse> signUp(
    @Body() SignupRequestBody signUpRequestBody,
  );
}
