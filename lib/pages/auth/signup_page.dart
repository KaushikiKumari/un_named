import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/auth/login_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/image_utils.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/string_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggle1() {
    setState(() {
      _obscureText1 = !_obscureText1;
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
                _firstNameTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _lastNameTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _emailIdTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _phoneTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _passwordTextFieldView(),
                const SizedBox(height: SpacingUtils.space5),
                _confirmPasswordTextFieldView(),
                const SizedBox(height: SpacingUtils.space25),
                _signUpButon(),
                const SizedBox(height: SpacingUtils.space25),
                _loginOptionView(),
              ],
            ),
          ),
        ],
      )),
    );
  }

  _headingView() {
    return const Text(StringUtils.SIGNUP_HEADING, style: authHeadingStyle);
  }

  _firstNameTextFieldView() {
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
              keyboardType: TextInputType.name,
              controller: firstNameController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.person_outline,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: StringUtils.FIRST_NAME_HINT,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _lastNameTextFieldView() {
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
              keyboardType: TextInputType.name,
              controller: lastNameController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.person_outline,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: StringUtils.LAST_NAME_HINT,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
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
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
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

  _phoneTextFieldView() {
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
              controller: phoneController,
              keyboardType: TextInputType.phone,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.call_outlined,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: StringUtils.PHONE_HINT,
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
              obscureText: _obscureText,
              keyboardType: TextInputType.text,
              controller: passwordController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
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

  _confirmPasswordTextFieldView() {
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
              obscureText: _obscureText1,
              keyboardType: TextInputType.text,
              controller: confirmPasswordController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              decoration: InputDecoration(
                // ignore: deprecated_member_use
                suffix: GestureDetector(
                    onTap: _toggle1,
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
                hintText: StringUtils.CONFIRM_PASSWORD,
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _signUpButon() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {
        Get.offAll(
          const LoginPage(),
          transition: Transition.rightToLeftWithFade,
        );
        Fluttertoast.showToast(
          msg: "Please login to enter!",
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
                        Text(StringUtils.SIGN_UP_BUTTON,
                            style: whiteColorTextStyle),
                        SizedBox(width: SpacingUtils.space5),
                        Icon(Icons.arrow_right_alt_outlined,
                            size: 30, color: AppColors.whiteBoxBgColor)
                      ]))),
        ),
      ),
    );
  }

  _loginOptionView() {
    return (GestureDetector(
      onTap: () {
        Get.offAll(
          const LoginPage(),
          transition: Transition.rightToLeftWithFade,
        );
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(StringUtils.ALREADY_HAVE_AN_ACCOUNT, style: authSubHeadingStyle),
        SizedBox(width: SpacingUtils.space5),
        Text(StringUtils.SIGN_IN, style: mainColorTextStyle),
      ]),
    ));
  }

  _authBgView() {
    return Container(
        height: Get.height / 3,
        width: Get.width / 1,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageUtils.authBg))));
  }
}
