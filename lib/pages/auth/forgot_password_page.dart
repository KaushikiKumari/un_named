import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/string_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Bounce(
          duration: const Duration(milliseconds: 110),
          onPressed: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade200,
                    AppColors.whiteBoxBgColor
                  ]),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                ),
                child: const Center(
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: AppColors.lightTextColor,
                    size: 25,
                  ),
                )),
          ),
        ),
        backgroundColor: AppColors.mainDarkColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(SpacingUtils.space15,
                SpacingUtils.space50, SpacingUtils.space15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headingView(),
                const SizedBox(height: SpacingUtils.space30),
                const SizedBox(height: SpacingUtils.space10),
                _emailIdTextFieldView(),
                const SizedBox(height: SpacingUtils.space20),
                _sendButon(),
              ],
            )),
      ),
    );
  }

  _headingView() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(StringUtils.FORGOTPASSWORD_HEADING, style: authHeadingStyle),
          SizedBox(height: SpacingUtils.space5),
          Text(StringUtils.FORGOTPASSWORD_SUBHEADING,
              style: authSubHeadingStyle),
        ]);
  }

  _emailIdTextFieldView() {
    return SizedBox(
      width: Get.width / 1,
      height: SpacingUtils.buttonHeight,
      child: Card(
          elevation: SpacingUtils.space5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: AppColors.whiteBoxBgColor,
          child: Center(
            child: TextField(
              controller: emailIdController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.email_outlined,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: StringUtils.EMAIL_HINT,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _sendButon() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {
        Get.back();

        Fluttertoast.showToast(
          msg: "Check your entered email-id to reset your password!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      },
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: SpacingUtils.buttonHeight,
          width: Get.width / 2.7,
          child: Card(
              elevation: SpacingUtils.space10,
              shadowColor: AppColors.lightGreyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: AppColors.whiteBoxBgColor,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: const LinearGradient(colors: [
                        AppColors.mainLightColor,
                        AppColors.mainDarkColor
                      ])),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(StringUtils.SEND_BUTTON,
                            style: whiteColorTextStyle),
                        SizedBox(width: SpacingUtils.space5),
                        Icon(Icons.arrow_right_alt_outlined,
                            size: 30, color: AppColors.whiteBoxBgColor)
                      ]))),
        ),
      ),
    );
  }
}
