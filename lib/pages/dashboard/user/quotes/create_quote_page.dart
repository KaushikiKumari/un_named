import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/notifications/notification_page.dart';
import 'package:un_named/pages/dashboard/user/quotes/quotes_preview_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class CreateQuotePage extends StatefulWidget {
  const CreateQuotePage({Key? key}) : super(key: key);

  @override
  State<CreateQuotePage> createState() => _CreateQuotePageState();
}

class _CreateQuotePageState extends State<CreateQuotePage> {
  TextEditingController QuantityController = TextEditingController();
  TextEditingController PriceController = TextEditingController();
  TextEditingController surfaceAndFinishController = TextEditingController();
  TextEditingController paymentController = TextEditingController();
  TextEditingController deliveryTimeController = TextEditingController();
  TextEditingController taxController = TextEditingController();
  TextEditingController shipmentModeController = TextEditingController();
  TextEditingController offerValidController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController ifscController = TextEditingController();
  TextEditingController invoiceNameController = TextEditingController();
  TextEditingController contactPersonController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController mailIdController = TextEditingController();

  String _chosenValue = "Select Product";
  bool isOpen = true;

  void changeState(val) {
    setState(() {
      isOpen = val;
    });
  }

  var productList = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
  ];
  String _chosenValue0 = "Product Type";
  bool isOpen0 = true;

  void changeState0(val) {
    setState(() {
      isOpen0 = val;
    });
  }

  var productTypeList = [
    "Single",
    "Group",
  ];
  String _chosenValue1 = "Printing Type";
  bool isOpen1 = true;

  void changeState1(val) {
    setState(() {
      isOpen1 = val;
    });
  }

  var printingTypeList = [
    "Type 1",
    "Type 2",
    "Type 3",
  ];
  String _chosenValue2 = "Other Features Type";
  bool isOpen2 = true;

  void changeState2(val) {
    setState(() {
      isOpen2 = val;
    });
  }

  var otherFeatureList = [
    "Feature 1",
    "Feature 2",
    "Feature 3",
  ];
  String _chosenValue3 = "Holder Type";
  bool isOpen3 = true;

  void changeState3(val) {
    setState(() {
      isOpen3 = val;
    });
  }

  var holderTypeList = [
    "Type 1",
    "Type 2",
    "Type 3",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          title: const Text("Create Quote Form", style: whiteColorTextStyle),
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
            _selectProduct(),
            const SizedBox(height: 5),
            _selectProductType(),
            const SizedBox(height: 5),
            _quantityAndPriceFieldView(),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("More Detail"),
            ),
            const SizedBox(height: 5),
            _surfaceOrFinishView(),
            const SizedBox(height: 5),
            _selectPrintingType(),
            const SizedBox(height: 5),
            _selectOtherFeaturesType(),
            const SizedBox(height: 5),
            _selectHolderType(),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Terms & Conditions"),
            ),
            const SizedBox(height: 5),
            _paymentFieldView(),
            const SizedBox(height: 5),
            _deliveryTimeFieldView(),
            const SizedBox(height: 5),
            _taxView(),
            const SizedBox(height: 5),
            _shipmentModeView(),
            const SizedBox(height: 5),
            _offerValidView(),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Select Bank"),
            ),
            const SizedBox(height: 5),
            _bankFieldView(),
            const SizedBox(height: 5),
            _branchNameFeidlView(),
            const SizedBox(height: 5),
            _accountNumberFieldView(),
            const SizedBox(height: 5),
            _ifscFieldView(),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("Customer Detail"),
            ),
            const SizedBox(height: 5),
            _invoiceNameFieldView(),
            const SizedBox(height: 5),
            _contactPersonView(),
            const SizedBox(height: 5),
            _contactNumberView(),
            const SizedBox(height: 5),
            _mailIdView(),
            const SizedBox(height: 15),
            _resetButton(),
            const SizedBox(height: 5),
            _registerButton(),
            const SizedBox(height: 5),
          ]),
        )));
  }

  _selectProduct() {
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
                      itemCount: productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(productList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue = productList[index];
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

  _selectProductType() {
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              changeState0(!isOpen0);
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
                      Text(_chosenValue0, style: mainColorTextStyle),
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
                      itemCount: productTypeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(productTypeList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue0 = productTypeList[index];
                            });

                            changeState0(!isOpen0);
                          },
                        );
                      })),
            ),
            visible: !isOpen0,
          )
        ],
      ),
    );
  }

  _selectPrintingType() {
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              changeState1(!isOpen1);
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
                      Text(_chosenValue1, style: mainColorTextStyle),
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
                      itemCount: printingTypeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(printingTypeList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue1 = printingTypeList[index];
                            });

                            changeState1(!isOpen1);
                          },
                        );
                      })),
            ),
            visible: !isOpen1,
          )
        ],
      ),
    );
  }

  _selectOtherFeaturesType() {
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              changeState2(!isOpen2);
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
                      Text(_chosenValue2, style: mainColorTextStyle),
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
                      itemCount: otherFeatureList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(otherFeatureList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue2 = otherFeatureList[index];
                            });

                            changeState2(!isOpen2);
                          },
                        );
                      })),
            ),
            visible: !isOpen2,
          )
        ],
      ),
    );
  }

  _selectHolderType() {
    return Center(
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              changeState3(!isOpen3);
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
                      Text(_chosenValue3, style: mainColorTextStyle),
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
                      itemCount: holderTypeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.mainLightColor,
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(holderTypeList[index],
                                    style: whiteColorTextStyle),
                              )),
                          onTap: () {
                            setState(() {
                              _chosenValue3 = holderTypeList[index];
                            });

                            changeState3(!isOpen3);
                          },
                        );
                      })),
            ),
            visible: !isOpen3,
          )
        ],
      ),
    );
  }

  _quantityAndPriceFieldView() {
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
                  controller: QuantityController,
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
                    hintText: "Quantity*",
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
                  controller: PriceController,
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
                    hintText: "Price*",
                    hintStyle: hintTextStyle,
                  ),
                ),
              )),
        ),
      ],
    );
  }

  _surfaceOrFinishView() {
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
              controller: surfaceAndFinishController,
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
                hintText: "Surface/Finish*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _paymentFieldView() {
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
              controller: paymentController,
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
                hintText: "Payment*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _deliveryTimeFieldView() {
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
              controller: deliveryTimeController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.timelapse,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Delivery Time*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _taxView() {
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
              controller: taxController,
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
                hintText: "Tax (GST)*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _shipmentModeView() {
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
              controller: shipmentModeController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.shopping_cart,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Shipment Mode*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _offerValidView() {
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
              controller: offerValidController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.offline_bolt,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Offer Valid*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _bankFieldView() {
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
              controller: bankNameController,
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
                hintText: "Bank Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _branchNameFeidlView() {
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
              controller: branchController,
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
                hintText: "Branch Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _accountNumberFieldView() {
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
              controller: accountNumberController,
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
                hintText: "Account Number*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _ifscFieldView() {
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
              controller: ifscController,
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
                hintText: "IFSC Code*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _invoiceNameFieldView() {
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
              controller: invoiceNameController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.person,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Invoice Name*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _contactPersonView() {
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
              controller: paymentController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.person,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Contact Person*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _contactNumberView() {
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
              controller: contactNumberController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.person,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Contact Number*",
                hintStyle: hintTextStyle,
              ),
            ),
          )),
    );
  }

  _mailIdView() {
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
              controller: mailIdController,
              cursorHeight: SpacingUtils.space20,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              style: inputTextStyle,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                prefixIcon: Icon(Icons.email,
                    size: 20, color: AppColors.mainLightColor),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.only(left: SpacingUtils.space15),
                hintText: "Mail ID*",
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
        Get.to(QuotesPreviewPage());
        Fluttertoast.showToast(
          msg: "Preview",
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
