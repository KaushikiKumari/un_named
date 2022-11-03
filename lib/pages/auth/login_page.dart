import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/auth/forgot_password_page.dart';
import 'package:un_named/pages/auth/signup_page.dart';
import 'package:un_named/pages/dashboard/dashboard_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/image_utils.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/string_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(SpacingUtils.space15,
                SpacingUtils.space100, SpacingUtils.space15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headingView(),
                const SizedBox(height: SpacingUtils.space25),
                _loginIdTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _passwordTextFieldView(),
                const SizedBox(height: SpacingUtils.space10),
                _forgotPasswordView(),
                const SizedBox(height: SpacingUtils.space25),
                _loginButon(),
                const SizedBox(height: SpacingUtils.space25),
                _signUpOptionView(),
              ],
            ),
          ),
        ],
      )),
    );
  }

  _headingView() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(StringUtils.LOGIN_HEADING, style: authHeadingStyle),
          SizedBox(height: SpacingUtils.space5),
          Text(StringUtils.LOGIN_SUBHEADING, style: authSubHeadingStyle),
        ]);
  }

  _loginIdTextFieldView() {
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
              controller: idController,
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
                hintText: StringUtils.ID_HINT,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _passwordTextFieldView() {
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
              controller: passController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              obscureText: _obscureText,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              decoration: InputDecoration(
                // ignore: deprecated_member_use
                suffix: GestureDetector(
                    onTap: _toggle,
                    child: Text(
                        _obscureText ? StringUtils.SHOW : StringUtils.HIDE,
                        style: mainColorTextStyle)),
                prefixIcon: const Icon(Icons.lock_outline,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(
                  left: SpacingUtils.space15,
                  right: SpacingUtils.space10,
                ),
                hintText: StringUtils.PASSWORD_HINT,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _forgotPasswordView() {
    return GestureDetector(
      onTap: () {
        Get.to(
          const ForgotPasswordPage(),
          transition: Transition.rightToLeftWithFade,
        );
      },
      child: const Align(
          alignment: Alignment.bottomRight,
          child: Text(StringUtils.FOROGOT, style: mainColorTextStyle)),
    );
  }

  _loginButon() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {
        Get.offAll(
          const DashboardPage(),
          transition: Transition.rightToLeftWithFade,
        );
        Fluttertoast.showToast(
          msg: "Welcome!",
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
                        Text(StringUtils.LOGIN_BUTTON,
                            style: whiteColorTextStyle),
                        SizedBox(width: SpacingUtils.space5),
                        Icon(Icons.arrow_right_alt_outlined,
                            size: 30, color: AppColors.whiteBoxBgColor)
                      ]))),
        ),
      ),
    );
  }

  _signUpOptionView() {
    return GestureDetector(
      onTap: () {
        Get.offAll(
          const SignUpPage(),
          transition: Transition.rightToLeftWithFade,
        );
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(StringUtils.DONT_HAVE_AN_ACCOUNT, style: authSubHeadingStyle),
        SizedBox(width: SpacingUtils.space5),
        Text(StringUtils.SIGN_UP, style: mainColorTextStyle),
      ]),
    );
  }

  _authBgView() {
    return Container(
        height: Get.height / 3,
        width: Get.width / 1,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageUtils.authBg))));
  }
}
