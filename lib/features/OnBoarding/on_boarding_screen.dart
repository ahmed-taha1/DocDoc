import 'package:doc_doc/features/OnBoarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/OnBoarding/widgets/doctor_image_and_text.dart';
import 'package:doc_doc/features/OnBoarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 22.h, bottom: 22.h),
            ),
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndText(),
            SizedBox(height: 18.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily '
                    'with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  const GetStartedButton(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
