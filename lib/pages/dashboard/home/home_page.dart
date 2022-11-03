import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/comment/comments_page.dart';
import 'package:un_named/pages/dashboard/home/notifications/notification_page.dart';
import 'package:un_named/pages/dashboard/user/search_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFev = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          actions: [
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  Get.to(
                    const SearchPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                child: const Icon(Icons.search,
                    size: 23, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  Get.to(
                    const NotificationsPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                // ignore: prefer_const_constructors
                child: Icon(Icons.notifications,
                    size: 23, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space5),
            // Bounce(
            //     duration: const Duration(milliseconds: 110),
            //     onPressed: () {
            //       // Get.to(
            //       //   const NotificationsPage(),
            //       //   transition: Transition.rightToLeftWithFade,
            //       // );
            //     },
            //     child: const Icon(Icons.shopping_cart,
            //         size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
          ],
        ),
        drawer: const Drawer(),
        // ignore: prefer_const_constructors
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _postView(),
          const SizedBox(height: 5),
          _postView(),
          const SizedBox(height: 5),
          _postView(),
          const SizedBox(height: 5),
          _postView(),
          const SizedBox(height: 5),
          _postView(),
          const SizedBox(height: 5),
          _postView(),
          const SizedBox(height: 5),
          _postView(),
        ])));
  }

  _postView() {
    return DelayedDisplay(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: AppColors.scaffoldBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Stack(
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
                                    color: AppColors.scaffoldBackgroundColor,
                                    border: Border.all(
                                        color: AppColors.mainDarkColor),
                                    // image:const  DecorationImage(
                                    //     image: AssetImage(
                                    //         'assets/images/dp.jpeg'),
                                    //     fit: BoxFit.fill),
                                    shape: BoxShape.circle,
                                  )),
                            )),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                color: AppColors.onlineColor,
                                border: Border.all(
                                    color: AppColors.scaffoldBackgroundColor),
                                // image: const DecorationImage(
                                //     image:
                                //         AssetImage('assets/images/fish.jpg'),
                                //     fit: BoxFit.fill),

                                shape: BoxShape.circle,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        // Get.to(const PostDetailPage(),
                        //     transition: Transition.rightToLeftWithFade);
                      },
                      child: SizedBox(
                        width: Get.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Bhawani Setcorn Pvt. ltd.",
                                style: mainColorTextStyle,
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 2),
                            Text(
                              "18 Dec.  03:20 pm",
                              style: smallDullTextStyle,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                PopupMenuButton(
                  offset: const Offset(0, 45), // SET THE (X,Y) POSITION
                  iconSize: 25,
                  icon: const Center(
                    child: Icon(
                      Icons.more_horiz,
                      color: AppColors.lightTextColor,
                    ),
                  ),
                  elevation: 3,

                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        enabled: false, // DISABLED THIS ITEM
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                Get.back();
                                Fluttertoast.showToast(
                                  msg: "Share option will be open here!",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                );
                              },
                              child: const SizedBox(
                                  height: 45,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Share to",
                                          style: hintTextStyle))),
                            ),
                            InkWell(
                                splashColor: Colors.transparent,
                                onTap: () {
                                  Get.back();
                                  // Get.to(const ReportPostPage(),
                                  //     transition:
                                  //         Transition.rightToLeftWithFade);
                                },
                                child: const SizedBox(
                                    height: 45,
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Report Post",
                                            style: hintTextStyle)))),
                            InkWell(
                                splashColor: Colors.transparent,
                                onTap: () {
                                  Get.back();
                                  Fluttertoast.showToast(
                                    msg: "User is blocked!",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                  );
                                },
                                child: const SizedBox(
                                    height: 45,
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Block User",
                                            style: hintTextStyle)))),
                          ],
                        ),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
            width: Get.width / 1,
            color: AppColors.scaffoldBackgroundColor,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Text(
                "Recently Added New Photo in Gallery",
                style: smallTextStyle,
              ),
            )),
        Container(
          height: Get.height / 3,
          width: Get.width / 1,
          color: Colors.blueGrey.shade100,
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  width: Get.width / 1,
                  color: AppColors.scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            // ignore: prefer_const_literals_to_create_immutables
                            Text(
                              "155 Likes",
                              style: smallTextStyle,
                            ),
                            // ignore: prefer_const_constructors
                            Text(
                              "15 Comments   25 Share",
                              style: smallTextStyle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Divider(),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _isFev = !_isFev;
                                });
                              },
                              child: Row(children: [
                                // ignore: prefer_const_constructors
                                _isFev
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                      ),
                                const SizedBox(width: SpacingUtils.space10),
                                // ignore: prefer_const_constructors
                                Text(
                                  "Like",
                                  style: normalTextStyle,
                                ),
                              ]),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            InkWell(
                              onTap: () {
                                Get.to(
                                  const CommentsPage(),
                                  transition: Transition.rightToLeftWithFade,
                                );
                              },
                              child: Row(children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: SpacingUtils.space10),
                                // ignore: prefer_const_constructors
                                Text(
                                  "Comment",
                                  style: normalTextStyle,
                                ),
                              ]),
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            Row(children: [
                              // ignore: prefer_const_constructors
                              Icon(
                                Icons.share,
                                color: Colors.blueGrey,
                              ),
                              const SizedBox(width: SpacingUtils.space10),
                              // ignore: prefer_const_constructors
                              Text(
                                "Share",
                                style: normalTextStyle,
                              ),
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ))
            ])
      ]),
    );
  }
}
