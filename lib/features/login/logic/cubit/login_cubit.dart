import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';
import 'package:doc_doc/features/login/logic/cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (error) =>
          emit(LoginState.error(error: error.apiErrorModel.message ?? '')),
    );
  }
}
