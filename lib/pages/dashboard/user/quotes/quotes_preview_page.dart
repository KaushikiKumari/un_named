import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/notifications/notification_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class QuotesPreviewPage extends StatefulWidget {
  const QuotesPreviewPage({Key? key}) : super(key: key);

  @override
  State<QuotesPreviewPage> createState() => _QuotesPreviewPageState();
}

class _QuotesPreviewPageState extends State<QuotesPreviewPage> {
  TextEditingController sizeController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController unitlengthController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          title: const Text("Preview Quote Form", style: whiteColorTextStyle),
          actions: [
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  Get.to(
                    const NotificationsPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                child: const Icon(Icons.notifications,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 5),
            _headPreview(),
            const SizedBox(height: 5),
            _productNameView(),
            const SizedBox(height: 5),
            _descriptionView(),
            const SizedBox(height: 5),
            _sizeAndLengthView(),
            const SizedBox(height: 5),
            _quantityView(),
            const SizedBox(height: 5),
            _unitPriceView(),
            const SizedBox(height: 5),
            _amountView(),
            const SizedBox(height: 15),
            _resetButton(),
            const SizedBox(height: 5),
            _registerButton(),
            const SizedBox(height: 5),
          ]),
        )));
  }

  _headPreview() {
    return SizedBox(
      width: Get.width / 1,
      child: Card(
          elevation: SpacingUtils.space5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: AppColors.whiteBoxBgColor,
          // ignore: prefer_const_literals_to_create_immutables
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: prefer_const_literals_to_create_immutables
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Jeevan Rekha Hospital", style: normalTextStyle),
              const SizedBox(height: 5),
              Text("Jaipur Rajasthan, India", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("Tel. +91 1234567898", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("E-mail : testEmail123@gmail.com", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("Quotes : #HAROM/JPR/1302/19-20", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("Products : 5", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("Date : 13-02-2021", style: smallTextStyle),
              const SizedBox(height: 2),
              Text("Multicolor Lanyard", style: smallTextStyle),
              const SizedBox(height: 1),
            ]),
          )),
    );
  }

  _sizeAndLengthView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Get.width / 2.2,
          height: SpacingUtils.buttonHeight,
          child: Card(
              elevation: SpacingUtils.space5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: AppColors.whiteBoxBgColor,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: sizeController,
                  cursorHeight: SpacingUtils.space20,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainDarkColor,
                  style: inputTextStyle,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    prefixIcon: Icon(Icons.access_time,
                        size: 20, color: AppColors.mainLightColor),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: SpacingUtils.space15),
                    hintText: "Size*",
                    hintStyle: hintTextStyle,
                  ),
                ),
              )),
        ),
        SizedBox(
          width: Get.width / 2.2,
          height: SpacingUtils.buttonHeight,
          child: Card(
              elevation: SpacingUtils.space5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: AppColors.whiteBoxBgColor,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: lengthController,
                  cursorHeight: SpacingUtils.space20,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: AppColors.mainDarkColor,
                  style: inputTextStyle,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    prefixIcon: Icon(Icons.access_time,
                        size: 20, color: AppColors.mainLightColor),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: SpacingUtils.space15),
                    hintText: "Length*",
                    hintStyle: hintTextStyle,
                  ),
                ),
              )),
        ),
      ],
    );
  }

  _productNameView() {
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
              controller: productNameController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.ac_unit,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Product Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _descriptionView() {
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
              controller: descriptionController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.ac_unit,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Description*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _quantityView() {
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
              keyboardType: TextInputType.number,
              controller: sizeController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.money,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Quantity*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _unitPriceView() {
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
              keyboardType: TextInputType.number,
              controller: unitlengthController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.money,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Unit Price*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _amountView() {
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
              keyboardType: TextInputType.number,
              controller: amountController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.money,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Amount*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _registerButton() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {
        Get.back();
        Get.back();
        Fluttertoast.showToast(
          msg: "Registered",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      },
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: SpacingUtils.buttonHeight,
          width: Get.width / 1,
          child: Card(
              elevation: SpacingUtils.space10,
              shadowColor: AppColors.lightGreyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: AppColors.whiteBoxBgColor,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: const LinearGradient(colors: [
                      AppColors.mainLightColor,
                      AppColors.mainDarkColor
                    ])),
                child: const Center(
                  child: Text("Preview", style: whiteColorTextStyle),
                ),
              )),
        ),
      ),
    );
  }

  _resetButton() {
    return Bounce(
        duration: const Duration(milliseconds: 110),
        onPressed: () {
          Fluttertoast.showToast(
            msg: "Reset",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
          );
        },
        child: Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: SpacingUtils.buttonHeight,
            width: Get.width / 1,
            child: Card(
              elevation: SpacingUtils.space10,
              shadowColor: AppColors.lightGreyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: AppColors.whiteBoxBgColor,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border:
                        Border.all(color: AppColors.mainDarkColor, width: 1),
                    color: AppColors.whiteBoxBgColor,
                  ),
                  child: const Center(
                    child: Text("RESET", style: mainColorTextStyle),
                  )),
            ),
          ),
        ));
  }
}
