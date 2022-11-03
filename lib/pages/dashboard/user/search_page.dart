import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    _searchBoxView(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _searchBoxView() {
    return DelayedDisplay(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Bounce(
          duration: const Duration(milliseconds: 110),
          onPressed: () {
            Get.back();
          },
          child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [AppColors.mainLightColor, Colors.pink]),
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: const Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: AppColors.whiteBoxBgColor,
                  size: 25,
                ),
              )),
        ),
        Container(
          width: Get.width / 1 - 80,
          height: SpacingUtils.buttonHeight,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: TextField(
              cursorHeight: 20,
              style: normalTextStyle,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: AppColors.mainDarkColor,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.mainDarkColor,
                  size: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.only(left: 15),
                hintText: 'Search',
                hintStyle: hintTextStyle,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
