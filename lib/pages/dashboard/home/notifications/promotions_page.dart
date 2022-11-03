import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class PromotionsPage extends StatefulWidget {
  const PromotionsPage({Key? key}) : super(key: key);

  @override
  _PromotionsPageState createState() => _PromotionsPageState();
}

class _PromotionsPageState extends State<PromotionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            "Promotions",
            style: whiteColorTextStyle,
          ),
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Text(
              "No Promotions Yet",
              style: smallTextStyle,
            ),
          ),
        ));
  }
}
