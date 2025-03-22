import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:ai_tactical_assistant/core/utils/app_validator/app_validator.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:ai_tactical_assistant/features/auth/presentation/pages/verify_otp/verify_otp_screen.dart';
import 'package:ai_tactical_assistant/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig.paddingSymmetric,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tr('forgot_password'),
            style: TextStyles.bold24,
          ),
          const AppSpacer(heightRatio: 0.3),
          Text(
            tr('forgot_password_description'),
            style: TextStyles.regular14,
          ),
          const AppSpacer(heightRatio: 1),
          Form(
            // key: _formKey,
            child: TextFormField(
              // controller: phoneController,
              keyboardType: TextInputType.phone,
              validator: (String? value) => Validator.phone(value),
              cursorColor: AppColors.primary,
              onTapOutside: (PointerDownEvent event) {
                FocusScope.of(context).unfocus();
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9٠-٩]'),
                ),
                LengthLimitingTextInputFormatter(11),
              ],
              decoration: InputDecoration(
                labelText: tr('enter_phone_number_here'),
              ),
            ),
          ),
          const AppSpacer(heightRatio: 1),
          ElevatedButton(
            onPressed: () {
              appNavigator.push(screen: OTPVerficationScreen());

              // if (!_formKey.currentState!.validate()) {
              //   return;
              // }
              // context
              //     .read<ForgetPasswordCubit>()
              //     .forgetPasswordEvent(phone: phoneController.text);
            },
            child: Text(tr('send_code')),
          ),
        ],
      ),
    );
  }
}
