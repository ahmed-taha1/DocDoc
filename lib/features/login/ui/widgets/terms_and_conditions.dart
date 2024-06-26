import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GreyRegular.copyWith(fontSize: 14.sp),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13GreyRegular.copyWith(fontSize: 14.sp),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14DarkBlueMedium.copyWith(height: 1.5.h),
          ),
        ]
      ),
    );
  }
}
