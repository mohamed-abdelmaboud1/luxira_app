import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:luxira_app/core/utils/app_images.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_text_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/helpers/form_validator.dart';
import '../../../core/widgets/custom_elevated_button.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final TextEditingController textEditingController = TextEditingController();
  var key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: CustomAppBar(
        text: 'Reset Password',
      ),
      body: Column(
        children: [
          // Row(
          //   children: [
          //     Text(
          //       'Enter the code',
          //       style: AppStyles.bold16.copyWith(),
          //     ),
          //     Text(
          //       ' we just sent to your email',
          //       style: AppStyles.regular14,
          //     ),
          //   ],
          // ),
          Text.rich(
            TextSpan(
                text: 'we sent a code to ',
                style: AppStyles.regular14,
                children: [
                  TextSpan(
                    text: 'Mohamed@gmail.com',
                    style: AppStyles.bold16.copyWith(
                      color: Colors.blue,
                    ),
                  )
                ]),
          ),

          Gap(20),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(9),
              fieldHeight: 55,
              fieldWidth: 55,
              activeFillColor: Colors.white,
              activeColor: Colors.grey,
              inactiveFillColor: Colors.white,
              inactiveColor: Colors.white,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.white,
            enableActiveFill: true,
            // errorAnimationController: errorController,
            // controller: textEditingController,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              // print(value);
              // setState(() {
              //   currentText = value;
              // });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
          Form(
            key: key,
            autovalidateMode: autovalidateMode,
            child: CustomTextFormField(
              inputFormatters: [
                // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                // FilteringTextInputFormatter.digitsOnly
              ],
              controller: textEditingController,
              hint: 'Enter your Email',
              validator: FormValidator.validateEmail,
              onChanged: (p0) {
                setState(() {});
                log('password: ${textEditingController.value.text}');
              },
            ),
          ),
          Gap(8),
          Row(
            spacing: 5,
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInCubic,
                  height: 20,
                  decoration: BoxDecoration(
                    color: textEditingController.value.text.length < 4
                        ? Colors.grey
                        : Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInCubic,
                  height: 20,
                  decoration: BoxDecoration(
                    color: textEditingController.value.text.length < 6
                        ? Colors.grey
                        : Colors.yellow,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInCubic,
                  height: 20,
                  decoration: BoxDecoration(
                    color: textEditingController.value.text.length < 9
                        ? Colors.grey
                        : Colors.yellow,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInCubic,
                  height: 20,
                  decoration: BoxDecoration(
                    color: textEditingController.value.text.length < 12
                        ? Colors.grey
                        : Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
          Gap(20),
          CustomElevatedButton(
            colorButton: Colors.blue,
            name: 'Reset Password',
            colorText: Colors.white,
            onPressed: () {
              if (key.currentState!.validate()) {
                print('password: is valid');
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          Container(
            width: 138,
            height: 117,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 9.74,
                  spreadRadius: 0,
                  offset: Offset(0, 3.25),
                  color: Color(0xff004365).withValues(alpha: 0.08),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.assetsImagesFashionListview),
                Gap(5),
                Text('Clothes',
                    style: AppStyles.bold16.copyWith(
                      color: Color(0xff004365),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      leading: Icon(
        Icons.arrow_back_ios,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
