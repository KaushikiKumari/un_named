import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/notifications/acitivities_page.dart';
import 'package:un_named/pages/dashboard/home/notifications/promotions_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.mainDarkColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Notification",
          style: whiteColorTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    _promotionsView(),
                    const Divider(),
                    _activitiesView(),
                  ],
                )),
            _orderUpdates(),
          ],
        ),
      ),
    );
  }

  _promotionsView() {
    return InkWell(
      onTap: () {
        Get.to(const PromotionsPage(),
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 5, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.verified_user_outlined,
                        color: Colors.red[800],
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Notifications"),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: Get.width / 2,
                        child: const Text(
                          "Use the up to 30% off voucher in your wallet",
                          style: smallTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    Get.to(const PromotionsPage(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.black45,
                    size: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _activitiesView() {
    return InkWell(
      onTap: () {
        Get.to(const ActivitiesPage(),
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.cyan[800],
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Aactivities"),
                      const SizedBox(height: 3),
                      SizedBox(
                        width: Get.width / 2,
                        child: const Text(
                          "No Activities Yet",
                          style: smallTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    Get.to(const ActivitiesPage(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.black45,
                    size: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _orderUpdates() {
    return Column(
      children: [
        Container(
            width: Get.width / 1, height: 0.5, color: Colors.grey.shade300),
        Container(
          color: Colors.grey[200],
          width: Get.width / 1,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              "Other Update",
              style: smallTextStyle,
            ),
          ),
        ),
        Container(
            width: Get.width / 1, height: 0.5, color: Colors.grey.shade300),
        const SizedBox(height: 200),
        const Center(
          child: Text(
            "No Notifications Yet",
            style: smallTextStyle,
          ),
        )
      ],
    );
  }
}
