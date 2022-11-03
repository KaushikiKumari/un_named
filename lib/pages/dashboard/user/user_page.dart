// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/home/notifications/notification_page.dart';
import 'package:un_named/pages/dashboard/user/about_registered_user_page.dart';
import 'package:un_named/pages/dashboard/user/channel_partner_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/customer_corporate_registration_form.dart';
import 'package:un_named/pages/dashboard/user/customer_college_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/customer_school_registration_from_page.dart';
import 'package:un_named/pages/dashboard/user/organazation_registration_page.dart';
import 'package:un_named/pages/dashboard/user/partner_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/search_page.dart';
import 'package:un_named/pages/dashboard/user/user_registration_form_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // ignore: unused_field
  static const _icons = <IconData>[
    Icons.message,
    Icons.queue_outlined,
    Icons.shopping_basket,
    Icons.note_sharp,
    Icons.accessibility,
  ];

  @override
  Widget build(BuildContext context) {
    return
        // DefaultTabController(
        //   length: 5,
        //   child:
        Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      endDrawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[Text('End Drawer')],
          ),
        ),
      ),
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
        // bottom: TabBar(
        //   labelStyle: normalTextStyle,
        //   labelColor: AppColors.darkTextColor,
        //   unselectedLabelStyle: smallDullTextStyle,
        //   indicatorColor: AppColors.scaffoldBackgroundColor,
        //   labelPadding: EdgeInsets.zero,
        //   tabs: [
        //     for (final t in [
        //       'Chat',
        //       'Quotes',
        //       'Orders',
        //       'Invoice',
        //       'Id Card'
        //     ])
        //       Container(
        //           width: double.infinity,
        //           color: Colors.white, // color same as background
        //           child: Tab(text: '$t')),
        //   ],
        // ),
      ),
      drawer: const Drawer(),
      // body: TabBarView(
      //   children: [
      body: _registeredUsersView(),
      //     _quotesView(),
      //     _ordersView(),
      //     _invoiceView(),
      //     SingleChildScrollView(),
      //   ],
      // ),
      // ),
    );
  }

  _registeredUsersView() {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Registered Users", style: mainColorTextStyle),
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: [
              InkWell(
                onTap: () {
                  Get.to(
                    const SearchPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                child: Icon(
                  Icons.search,
                  color: AppColors.mainDarkColor,
                ),
              ),
              const SizedBox(width: SpacingUtils.space10),
              PopupMenuButton(
                offset: const Offset(0, 45), // SET THE (X,Y) POSITION
                iconSize: 25,
                icon: const Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.mainDarkColor,
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
                              Get.to(
                                  const CustomerCollegeRegistrationFormPage(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            child: const SizedBox(
                                height: 45,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Create User",
                                        style: hintTextStyle))),
                          ),
                          InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                Get.back();
                                Get.to(
                                    const CustomerCorporateRegistrationFormPage(),
                                    transition: Transition.rightToLeftWithFade);
                              },
                              child: const SizedBox(
                                  height: 45,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Create Broadcast",
                                          style: hintTextStyle)))),
                          InkWell(
                              splashColor: Colors.transparent,
                              onTap: () {
                                Get.back();
                                Get.to(
                                    const ChannelPartnerRegistrationFormPage(),
                                    transition: Transition.rightToLeftWithFade);
                              },
                              child: const SizedBox(
                                  height: 45,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Create Group",
                                          style: hintTextStyle)))),
                        ],
                      ),
                    ),
                  ];
                },
              ),
              const SizedBox(width: SpacingUtils.space10),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Icon(
                  Icons.filter_alt_outlined,
                  color: AppColors.mainDarkColor,
                ),
              ),
            ]),
          ]),
        ),
      ),
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: ListView.separated(
          itemCount: 100,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(const AboutRegisteredUserPage(),
                    transition: Transition.rightToLeftWithFade);
              },
              child: Container(
                color: AppColors.scaffoldBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 13),
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
                                      color: AppColors.scaffoldBackgroundColor,
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
                                Text("Rainbow School",
                                    style: normalTextStyle,
                                    overflow: TextOverflow.ellipsis),
                                SizedBox(height: 5),
                                Text(
                                  "3, Govind Niwas, Khatipura",
                                  style: smallDullTextStyle,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.call,
                          size: 20,
                          color: AppColors.mainDarkColor,
                        ),
                      ),
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
      )
    ]));
  }

  _quotesView() {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Quotations", style: mainColorTextStyle),
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: [
              Text("Create Quote", style: mainColorTextStyle),
              const SizedBox(width: SpacingUtils.space10),
              Icon(
                Icons.add,
                color: AppColors.mainDarkColor,
              ),
            ]),
          ]),
        ),
      ),
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: ListView.separated(
          itemCount: 100,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: AppColors.scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                                    color: AppColors.scaffoldBackgroundColor,
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
                              Text("Jeevan Rekha Hospital",
                                  style: normalTextStyle,
                                  overflow: TextOverflow.ellipsis),
                              SizedBox(height: 5),
                              Text(
                                "Quote #Harim/Jpr/1320/19-20",
                                style: smallDullTextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("13-20-2020",
                            style: smallDullTextStyle,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 5),
                        Text(
                          "09:45 am",
                          style: smallDullTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      )
    ]));
  }

  _ordersView() {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Purchase Orders", style: mainColorTextStyle),
            // ignore: prefer_const_literals_to_create_immutables

            Text("", style: mainColorTextStyle),
          ]),
        ),
      ),
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: ListView.separated(
          itemCount: 100,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: AppColors.scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                                    color: AppColors.scaffoldBackgroundColor,
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
                              Text("Jeevan Rekha Hospital",
                                  style: normalTextStyle,
                                  overflow: TextOverflow.ellipsis),
                              SizedBox(height: 5),
                              Text(
                                "Quote #Harim/Jpr/1320/19-20",
                                style: smallDullTextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("13-20-2020",
                            style: smallDullTextStyle,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 5),
                        Text(
                          "09:45 am",
                          style: smallDullTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      )
    ]));
  }

  _invoiceView() {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Invoices | Bills", style: mainColorTextStyle),
            // ignore: prefer_const_literals_to_create_immutables

            Text("", style: mainColorTextStyle),
          ]),
        ),
      ),
      Container(
        color: AppColors.scaffoldBackgroundColor,
        child: ListView.separated(
          itemCount: 100,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: AppColors.scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                                    color: AppColors.scaffoldBackgroundColor,
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
                              Text("Jeevan Rekha Hospital",
                                  style: normalTextStyle,
                                  overflow: TextOverflow.ellipsis),
                              SizedBox(height: 5),
                              Text(
                                "Quote #Harim/Jpr/1320/19-20",
                                style: smallDullTextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("13-20-2020",
                            style: smallDullTextStyle,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 5),
                        Text(
                          "09:45 am",
                          style: smallDullTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      )
    ]));
  }
}
