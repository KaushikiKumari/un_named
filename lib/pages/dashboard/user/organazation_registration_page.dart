import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/notifications/notification_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class OrganizationRegistrationFormPage extends StatefulWidget {
  const OrganizationRegistrationFormPage({Key? key}) : super(key: key);

  @override
  State<OrganizationRegistrationFormPage> createState() =>
      _OrganizationRegistrationFormPageState();
}

class _OrganizationRegistrationFormPageState
    extends State<OrganizationRegistrationFormPage> {
  TextEditingController OrganizationsFirmNameController =
      TextEditingController();
  TextEditingController OrganizationsNameController = TextEditingController();
  TextEditingController whatsaapContactNumberController =
      TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController invoiceNameController = TextEditingController();
  TextEditingController gstnNumberController = TextEditingController();

  String _chosenValue = "User Type";
  bool isOpen = true;

  void changeState(val) {
    setState(() {
      isOpen = val;
    });
  }

  var organizationsList = [
    "Organization 1",
    "Organization 2",
    "Organization 3",
    "Organization 4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          title: const Text("Organization Form", style: whiteColorTextStyle),
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
          child: Column(children: [
            _choosePartner(),
            const SizedBox(height: 5),
            _OrganizationsFirmNameFieldView(),
            const SizedBox(height: 5),
            _OrganizationsNameFieldView(),
            const SizedBox(height: 5),
            _mobileNumberFieldView(),
            const SizedBox(height: 5),
            _whatsaapMobileNumberFieldView(),
            const SizedBox(height: 5),
            _emailFieldView(),
            const SizedBox(height: 5),
            _addressFieldView(),
            const SizedBox(height: 5),
            _stateAndCityFieldView(),
            const SizedBox(height: 5),
            _countryAndPinCodeFeidlView(),
            const SizedBox(height: 5),
            _photosFieldView(),
            const SizedBox(height: 15),
            _resetButton(),
            const SizedBox(height: 5),
            _registerButton(),
            const SizedBox(height: 5),
          ]),
        )));
  }

  _choosePartner() {
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              changeState(!isOpen);
            },
            child: Card(
              elevation: 5,
              child: Container(
                width: Get.width,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_chosenValue, style: mainColorTextStyle),
                      const Icon(Icons.arrow_drop_down,
                          size: 30, color: AppColors.darkGreyColor)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Container(
                  color: Colors.transparent,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: organizationsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(organizationsList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue = organizationsList[index];
                            });

                            changeState(!isOpen);
                          },
                        );
                      })),
            ),
            visible: !isOpen,
          )
        ],
      ),
    );
  }

  _OrganizationsFirmNameFieldView() {
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
              controller: OrganizationsFirmNameController,
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
                hintText: "Oraganization Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _OrganizationsNameFieldView() {
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
              controller: OrganizationsNameController,
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
                hintText: "Contact Person Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _mobileNumberFieldView() {
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
              controller: contactNumberController,
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
                hintText: "Mobile Number (User ID)*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _whatsaapMobileNumberFieldView() {
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
              controller: whatsaapContactNumberController,
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
                hintText: "WhatsApp Mobile Number (User ID)*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _emailFieldView() {
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
                hintText: "Contact Email*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _addressFieldView() {
    return SizedBox(
      width: Get.width / 1,
      height: 55,
      child: Card(
          elevation: SpacingUtils.space5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: AppColors.whiteBoxBgColor,
          child: Center(
            child: TextField(
              keyboardType: TextInputType.text,
              controller: addressController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.location_on_outlined,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(
                    left: SpacingUtils.space15,
                    right: SpacingUtils.space10,
                    top: SpacingUtils.space10,
                    bottom: SpacingUtils.space10),
                hintText: "Address*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _stateAndCityFieldView() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
        width: Get.width / 2.15,
        height: 55,
        child: Card(
            elevation: SpacingUtils.space5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: AppColors.whiteBoxBgColor,
            child: Center(
              child: TextField(
                keyboardType: TextInputType.text,
                controller: stateController,
                cursorHeight: SpacingUtils.space20,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors.mainDarkColor,
                style: inputTextStyle,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(Icons.location_on_outlined,
                      size: 20, color: AppColors.mainLightColor),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: SpacingUtils.space15,
                      right: SpacingUtils.space10,
                      top: SpacingUtils.space10,
                      bottom: SpacingUtils.space10),
                  hintText: "State*",
                  hintStyle: hintTextStyle,
                ),
              ),
            )),
      ),
      SizedBox(
        width: Get.width / 2.15,
        height: 55,
        child: Card(
            elevation: SpacingUtils.space5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: AppColors.whiteBoxBgColor,
            child: Center(
              child: TextField(
                keyboardType: TextInputType.text,
                controller: cityController,
                cursorHeight: SpacingUtils.space20,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors.mainDarkColor,
                style: inputTextStyle,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(Icons.location_on_outlined,
                      size: 20, color: AppColors.mainLightColor),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: SpacingUtils.space15,
                      right: SpacingUtils.space10,
                      top: SpacingUtils.space10,
                      bottom: SpacingUtils.space10),
                  hintText: "City*",
                  hintStyle: hintTextStyle,
                ),
              ),
            )),
      ),
    ]);
  }

  _countryAndPinCodeFeidlView() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
        width: Get.width / 2.15,
        height: 55,
        child: Card(
            elevation: SpacingUtils.space5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: AppColors.whiteBoxBgColor,
            child: Center(
              child: TextField(
                keyboardType: TextInputType.text,
                controller: countryController,
                cursorHeight: SpacingUtils.space20,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors.mainDarkColor,
                style: inputTextStyle,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(Icons.location_on_outlined,
                      size: 20, color: AppColors.mainLightColor),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: SpacingUtils.space15,
                      right: SpacingUtils.space10,
                      top: SpacingUtils.space10,
                      bottom: SpacingUtils.space10),
                  hintText: "Country*",
                  hintStyle: hintTextStyle,
                ),
              ),
            )),
      ),
      SizedBox(
        width: Get.width / 2.15,
        height: 55,
        child: Card(
            elevation: SpacingUtils.space5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: AppColors.whiteBoxBgColor,
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: pincodeController,
                cursorHeight: SpacingUtils.space20,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: AppColors.mainDarkColor,
                style: inputTextStyle,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  // ignore: prefer_const_constructors
                  prefixIcon: Icon(Icons.location_on_outlined,
                      size: 20, color: AppColors.mainLightColor),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: SpacingUtils.space15,
                      right: SpacingUtils.space10,
                      top: SpacingUtils.space10,
                      bottom: SpacingUtils.space10),
                  hintText: "PinCode*",
                  hintStyle: hintTextStyle,
                ),
              ),
            )),
      ),
    ]);
  }

  _photosFieldView() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Photos [Visiting Card/Location etc.]",
                style: normalTextStyle),
            Text("Choose", style: TextStyle(color: Colors.blue)),
          ]),
    );
  }

  _registerButton() {
    return Bounce(
      duration: const Duration(milliseconds: 110),
      onPressed: () {
        Get.back();
        Fluttertoast.showToast(
          msg: "User Registered",
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
                  child: Text("User Registered", style: whiteColorTextStyle),
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
