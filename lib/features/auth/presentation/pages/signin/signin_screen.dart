import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../../core/constants/app_text_styles.dart';
import '../../../../../core/utils/app_validator/app_validator.dart';
import '../../../../../core/widgets/password_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Image.asset(AppAssets.appLogoGreen, width: 100.w),
      ),
      body: SafeArea(
        child: Padding(
          padding: SizeConfig.paddingSymmetric,
          child:
              // BlocSelector<DetectUserByPhoneCubit, DetectUserByPhoneState,
              //     UserStatus?>(
              //   selector: (state) => state.userStatus,
              //   builder: (BuildContext context, UserStatus? userStatus) {
              //     return
              SingleChildScrollView(
            child: Form(
              // key: context.read<DetectUserByPhoneCubit>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const AppSpacer(heightRatio: 1),
                  Text(
                    tr('sign_in'),
                    style: TextStyles.regular24,
                    textAlign: TextAlign.center,
                  ),
                  const AppSpacer(heightRatio: 0.5),
                  Text(
                    tr('enter_phone_number_recorded_for_company'),
                    style: TextStyles.regular14,
                    textAlign: TextAlign.center,
                  ),
                  const AppSpacer(heightRatio: 1),
                  // BlocSelector<DetectUserByPhoneCubit,
                  //     DetectUserByPhoneState, Map<String, dynamic>?>(
                  //   selector: (state) {
                  //     return state.errorMap;
                  //   },
                  //   builder: (context, state) {
                  //     return
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onChanged: (String value) {
                      // context
                      //     .read<DetectUserByPhoneCubit>()
                      //     .deleteNumber();
                    },
                    validator: (String? value) {
                      return Validator.phone(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9٠-٩]'),
                      ),
                      LengthLimitingTextInputFormatter(11),
                    ],
                    onTapOutside: (PointerDownEvent event) {
                      FocusScope.of(context).unfocus();
                    },
                    cursorColor: AppColors.primary,
                    decoration: InputDecoration(
                      labelText: tr('enter_phone_number_here'),
                    ),
                    //   );
                    // },
                  ),
                  const AppSpacer(heightRatio: 0.5),
                  // if (userStatus == UserStatus.active)
                  PasswordTextFormField(
                          controller: passwordController,
                          labelText: tr('enter_password_here'),
                          validator: (String? value) =>
                              Validator.defaultValidator(value))
                      .animate()
                      .slideY(
                        duration: const Duration(milliseconds: 300),
                      ),
                  const AppSpacer(),
                  // BlocBuilder<SignInCubit, SignInState>(
                  //   builder:
                  //       (BuildContext context, SignInState signInState) {
                  //     return BlocSelector<DetectUserByPhoneCubit,
                  //         DetectUserByPhoneState, RequestStatus>(
                  //       selector: (state) {
                  //         return state.requestStatus;
                  //       },
                  //       builder: (context, requestStatus) {
                  //         return Visibility(
                  //           visible:
                  //               requestStatus != RequestStatus.loading &&
                  //                   signInState is! SignInLoading,
                  //           replacement: const Loading(),
                  //           child:
                  ElevatedButton(
                    onPressed: () async {
                      // if (context
                      //         .read<DetectUserByPhoneCubit>()
                      //         .state
                      //         .userStatus ==
                      //     UserStatus.active) {
                      //   await context
                      //       .read<SignInCubit>()
                      //       .signInEvent(
                      //         phone: phoneController.text,
                      //         password: passwordController.text,
                      //       );
                      // } else {
                      // await context
                      //     .read<DetectUserByPhoneCubit>()
                      //     .detectUserByPhoneEvent(
                      //       phone: phoneController.text,
                      //     );
                      // }
                    },
                    child: Text(tr('sign_in')),
                  ),
                  //       );
                  //     },
                  //   );
                  // },
                  // ),
                  const AppSpacer(heightRatio: 1.5),
                  InkWell(
                    onTap: () {
                      // appNavigator.push(
                      //     screen: const ForgetPasswordScreen());
                    },
                    child: Text(
                      tr('forgot_password'),
                      textAlign: TextAlign.center,
                      style: TextStyles.light14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //     },
          //   ),
        ),
      ),
    );
  }
}
