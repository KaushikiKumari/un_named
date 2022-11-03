import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          title: const Text("User List", style: whiteColorTextStyle),
          actions: [
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  // Get.to(
                  //   const NotificationsPage(),
                  //   transition: Transition.rightToLeftWithFade,
                  // );
                },
                child: const Icon(Icons.notifications,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  // Get.to(
                  //   const NotificationsPage(),
                  //   transition: Transition.rightToLeftWithFade,
                  // );
                },
                child: const Icon(Icons.shopping_cart,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: AppColors.scaffoldBackgroundColor,
            child: ListView.separated(
              itemCount: 100,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Get.to(const AboutRegisteredUserPage(),
                    //     transition: Transition.rightToLeftWithFade);
                  },
                  child: Container(
                    color: AppColors.scaffoldBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Bounce(
                                  duration: const Duration(milliseconds: 110),
                                  onPressed: () {
                                    // Get.to(const ProfilePage(),
                                    //     transition: Transition.rightToLeftWithFade);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color:
                                              AppColors.scaffoldBackgroundColor,
                                          border: Border.all(
                                              color: AppColors.lightTextColor),
                                          // image:const  DecorationImage(
                                          //     image: AssetImage(
                                          //         'assets/images/dp.jpeg'),
                                          //     fit: BoxFit.fill),
                                          shape: BoxShape.circle,
                                        )),
                                  )),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  // Get.to(const PostDetailPage(),
                                  //     transition: Transition.rightToLeftWithFade);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Ltika Shrma",
                                        style: normalTextStyle,
                                        overflow: TextOverflow.ellipsis),
                                    SizedBox(height: 5),
                                    Text(
                                      "Suresh Kumar Shrma",
                                      style: smallDullTextStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.camera_alt,
                                size: 20,
                                color: AppColors.mainDarkColor,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.edit,
                                size: 20,
                                color: AppColors.mainDarkColor,
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
        )));
  }
}
