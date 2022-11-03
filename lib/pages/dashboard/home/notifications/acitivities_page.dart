import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.mainDarkColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Activities",
          style: whiteColorTextStyle,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: const Offset(0, 3))
              ]),
              constraints: const BoxConstraints(maxHeight: 150.0),
              child: const Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: AppColors.mainDarkColor,
                  unselectedLabelColor: Colors.black45,
                  indicatorColor: AppColors.mainDarkColor,
                  indicatorWeight: 1.5,
                  tabs: [
                    Tab(
                      child: Center(
                        child: Text("All Activities"),
                      ),
                    ),
                    Tab(
                      child: Center(
                        child: Text("Comments"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      child: Text(
                        "No Activities Yet",
                        style: smallTextStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Text(
                        "No Comments Yet",
                        style: smallTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
