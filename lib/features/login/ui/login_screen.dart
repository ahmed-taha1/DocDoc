import 'package:doc_doc/core/widgets/app_text_form_field.dart';
import 'package:doc_doc/features/login/ui/widgets/already_have_account.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font32BlueBold.copyWith(fontSize: 24),
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been "
                "up to since you last logged in.",
                style: TextStyles.font13GrayRegular.copyWith(fontSize: 16.sp),
              ),
              verticalSpace(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const AppTextFormField(hintText: 'E-mail'),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility/*, size: 20*/),
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: (){},
                    ),
                    verticalSpace(16),
                    const TermsAndConditions(),
                    verticalSpace(16),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
