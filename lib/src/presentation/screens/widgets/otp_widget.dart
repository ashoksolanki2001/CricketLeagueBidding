import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../resources/constants/colors.dart';
import '../../components/skipper_text.dart';

class OtpWidget extends StatelessWidget {
  String? otpCode;
  OtpWidget({super.key, required this.otpCode});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkipperText.header(
          'Enter the\nOTP you received',
          color: Colors.white,
        ),
        const SizedBox(
          height: 25.0,
        ),
        PinFieldAutoFill(
          currentCode: '123456',
          decoration: BoxLooseDecoration(
            textStyle: const TextStyle(
                color: Colors.black,
                fontFamily: 'Graphik',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            radius: Radius.zero,
            bgColorBuilder: const FixedColorBuilder(
              Color(0xFFffffff),
            ),
            strokeColorBuilder: const FixedColorBuilder(
              Color(0xFFFFFFFF),
            ),
          ),
          codeLength: 6,
          onCodeChanged: (code) {
            otpCode = code.toString();
          },
          onCodeSubmitted: (val) {},
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: RichText(
              text: const TextSpan(children: [
            TextSpan(
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Graphik",
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0),
                text: "You should receive the OTP in 3"),
            TextSpan(
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Graphik",
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0),
                text: "30 Second")
          ])),
        ),
      ],
    );
  }
}