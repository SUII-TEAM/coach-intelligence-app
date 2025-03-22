import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:ai_tactical_assistant/core/utils/app_validator/app_validator.dart';
import 'package:ai_tactical_assistant/core/widgets/password_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/app_spacer.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: SizeConfig.paddingSymmetric,
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  children: <Widget>[
                    const AppSpacer(heightRatio: 2),
                    Text(
                      tr('create_new_password'),
                      style: TextStyles.bold24,
                    ),
                    const AppSpacer(heightRatio: 0.5),
                    Text(
                      tr('create_new_password_text'),
                      style: TextStyles.regular14,
                    ),
                    const AppSpacer(heightRatio: 1.5),
                    PasswordTextFormField(
                      validator: (String? value) => Validator.password(value),
                      controller: passwordController,
                      labelText: tr('enter_new_password'),
                    ),
                    const AppSpacer(heightRatio: 0.5),
                    PasswordTextFormField(
                      labelText: tr('confirm_new_password'),
                      validator: (String? value) => Validator.confirmPassword(
                          value, passwordController.text),
                      controller: confirmPasswordController,
                    ),
                    const AppSpacer(heightRatio: 1.5),
                    ElevatedButton(
                      onPressed: () {
                        // if (!_formKey.currentState!.validate()) {
                        //   return;
                        // }
                        // context
                        //     .read<CreateNewPasswordCubit>()
                        //     .createNewPasswordEvent(
                        //         password: passwordController.text,
                        //         confirmPassword:
                        //             confirmPasswordController.text);
                      },
                      child: Text(tr('confirm')),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
