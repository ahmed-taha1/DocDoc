import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/signup/data/models/signup_response.dart';
import 'package:doc_doc/features/signup/data/models/signup_request_body.dart';

class SignupRepo{
  final Apiservice _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(SignupRequestBody signupRequestBody) async{
    try{
      final response = await _apiService.signUp(signupRequestBody);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}