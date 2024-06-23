class LoginResponse {
  final int? statusCode;
  final List<String>? errors;
  final String? token;
  final String? firstName;

  const LoginResponse({required this.statusCode, this.errors, this.token, this.firstName});
}

class LoginRequest{
  final String? email;
  final String? password;

  const LoginRequest({required this.email,required this.password});
}
