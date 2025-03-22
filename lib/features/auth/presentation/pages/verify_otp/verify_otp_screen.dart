import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerficationScreen extends StatefulWidget {
  const OTPVerficationScreen({super.key});

  @override
  State<OTPVerficationScreen> createState() => _OTPVerficationScreenState();
}

class _OTPVerficationScreenState extends State<OTPVerficationScreen> {
  final TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    // VerificationCodeTimerStream.counterValue = 60;
    // VerificationCodeTimerStream.autoDecrement();
    // VerificationCodeTimerStream.listen();
  }

  @override
  void dispose() {
    otpController.dispose();
    // VerificationCodeTimerStream.stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Image.asset(
          AppAssets.appLogoGreen,
          width: 100.w,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: SizeConfig.paddingSymmetric,
          child:
              // BlocBuilder<VerfiyCodeCubit, VerfiyCodeState>(
              //   builder: (context, state) {
              //     return
              Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const AppSpacer(heightRatio: 1.5),
              Text(
                tr('verify_identity'),
                style: TextStyles.bold24,
                textAlign: TextAlign.center,
              ),
              const AppSpacer(heightRatio: 0.7),
              Text(
                tr('to_confirm_your_identity,we_have_sent_the_4-digit_confirmation_code_on_the_registered_phone_number'),
                style: TextStyles.regular14,
                textAlign: TextAlign.center,
              ),
              const AppSpacer(heightRatio: 1.5),
              Form(
                key: formKey,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 26.w),
                    child: PinCodeTextField(
                      autoFocus: true,
                      controller: otpController,
                      autoDisposeControllers: false,
                      appContext: context,
                      length: 4,
                      animationType: AnimationType.scale,
                      cursorColor: AppColors.primary,
                      backgroundColor: AppColors.scaffoldBackgroundColor,
                      textStyle: TextStyles.regular24,
                      keyboardType: TextInputType.number,
                      pinTheme: (otpController.text.length <= 4)
                          //  &&   state is VerfiyCodeSuccess ||
                          // state is VerfiyCodeInitial ||
                          // state is VerfiyCodeLoading)
                          ? noramlPinTheme()
                          : errorPinTheme(),
                    ),
                  ),
                ),
              ),
              const AppSpacer(heightRatio: 1.5),
              ElevatedButton(
                onPressed: () {
                  // if (!formKey.currentState!.validate()) {
                  //   return;
                  // }
                  // context
                  //     .read<VerfiyCodeCubit>()
                  //     .verfiyCodeEvent(code: otpController.text);
                },
                child: Text(tr('confirm')),
              ),
              // BlocBuilder<SendOtpCubit, SendOtpState>(
              //   builder: (BuildContext context, SendOtpState state) {
              //     if (state is SendOtpLoading) {
              //       return const Center(
              //         child: Column(
              //           children: [
              //             AppSpacer(heightRatio: 0.5),
              //             Loading(),
              //           ],
              //         ),
              //       );
              //     }
              // return StreamBuilder<int>(
              //   stream: VerificationCodeTimerStream.stream,
              //   builder: (BuildContext context,
              //       AsyncSnapshot<int> snapshot) {
              //     if (snapshot.hasData) {
              //       if (snapshot.data == 0) {
              //         return Column(
              //           children: [
              //             const AppSpacer(heightRatio: 0.5),
              //             TextButton(
              //               onPressed: () {
              //                 context
              //                     .read<SendOtpCubit>()
              //                     .sendOTPEvent();
              //               },
              //               child:
              const AppSpacer(heightRatio: 1.5),
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: '${tr('period_expired')}   ',
                      style:
                          TextStyles.regular14.copyWith(color: AppColors.black),
                    ),
                    TextSpan(
                      text: tr('resend_code'),
                      style: TextStyles.regular14.copyWith(
                        color: AppColors.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              //     ),
              //   ],
              // );
              // } else {
              //       return Column(
              //         children: <Widget>[
              //           const AppSpacer(heightRatio: 1.5),
              //           Center(
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 color: AppColors.white,
              //                 borderRadius:
              //                     BorderRadius.circular(15.r),
              //               ),
              //               child: Text(
              //                 '${tr('sending_code')}  ${VerificationCodeTimerStream.formatCounter(snapshot.data ?? 0)}',
              //                 style: TextStyles.regular12,
              //               ),
              //             ),
              //           ),
              //         ],
              //       );
              //     }
              //   } else {
              //     return const SizedBox.shrink();
              //   }
              // },
              //   );
              // },
              // ),
            ],
            // );
            // },
          ),
        ),
      ),
    );
  }

  PinTheme noramlPinTheme() {
    return PinTheme(
      fieldOuterPadding: EdgeInsets.zero,
      fieldHeight: 70.h,
      fieldWidth: 70.w,
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(15.r),
      activeColor: AppColors.primary,
      inactiveColor: AppColors.lightestGrey,
      selectedColor: AppColors.primary,
    );
  }

  PinTheme errorPinTheme() {
    return PinTheme(
        fieldOuterPadding: EdgeInsets.zero,
        fieldHeight: 70.h,
        fieldWidth: 70.w,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(15.r),
        activeColor: AppColors.red,
        inactiveColor: AppColors.lightestGrey,
        selectedColor: AppColors.red);
  }
}
