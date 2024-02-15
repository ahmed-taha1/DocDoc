import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:doc_doc/features/on_boarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

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
            verticalSpace(30),
            const DoctorImageAndText(),
            verticalSpace(18),
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
                  verticalSpace(30),
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
