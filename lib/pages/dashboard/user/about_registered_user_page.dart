// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/user/about_registered_user_page.dart';
import 'package:un_named/pages/dashboard/user/channel_partner_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/communications/chat_page.dart';
import 'package:un_named/pages/dashboard/user/customer_college_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/customer_corporate_registration_form.dart';
import 'package:un_named/pages/dashboard/user/customer_school_registration_from_page.dart';
import 'package:un_named/pages/dashboard/user/organazation_registration_page.dart';
import 'package:un_named/pages/dashboard/user/partner_registration_form_page.dart';
import 'package:un_named/pages/dashboard/user/quotes/create_quote_page.dart';
import 'package:un_named/pages/dashboard/user/search_page.dart';
import 'package:un_named/pages/dashboard/user/user_list.dart';
import 'package:un_named/pages/dashboard/user/user_registration_form_page.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/spacing_utils.dart';
import 'package:un_named/utils/strings_style.dart';

class AboutRegisteredUserPage extends StatefulWidget {
  const AboutRegisteredUserPage({Key? key}) : super(key: key);

  @override
  _AboutRegisteredUserPageState createState() =>
      _AboutRegisteredUserPageState();
}

class _AboutRegisteredUserPageState extends State<AboutRegisteredUserPage> {
  var isOpen = 0;
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
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: AppColors.mainDarkColor,
          elevation: 0,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Row(
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
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: AppColors.scaffoldBackgroundColor,
                          border: Border.all(color: AppColors.lightTextColor),
                          // image:const  DecorationImage(
                          //     image: AssetImage(
                          //         'assets/images/dp.jpeg'),
                          //     fit: BoxFit.fill),
                          shape: BoxShape.circle,
                        )),
                  )),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  // Get.to(const PostDetailPage(),
                  //     transition: Transition.rightToLeftWithFade);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Rainbow School",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "3, Govind Niwas, Khatipura",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  // Get.to(
                  //   const NotificationsPage(),
                  //   transition: Transition.rightToLeftWithFade,
                  // );
                },
                child: const Icon(Icons.call,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  Get.to(
                    const SearchPage(),
                    transition: Transition.rightToLeftWithFade,
                  );
                },
                child: const Icon(Icons.search,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            PopupMenuButton(
              offset: const Offset(0, 45), // SET THE (X,Y) POSITION
              iconSize: 20,
              icon: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
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
                            Get.to(const CustomerCollegeRegistrationFormPage(),
                                transition: Transition.rightToLeftWithFade);
                          },
                          child: const SizedBox(
                              height: 45,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Create College Customer",
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
                                    child: Text("Create Corporate Customer",
                                        style: hintTextStyle)))),
                        InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              Get.back();
                              Get.to(const CustomerSchoolRegistrationFormPage(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            child: const SizedBox(
                                height: 45,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Create School Customer",
                                        style: hintTextStyle)))),
                        InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              Get.back();
                              Get.to(const OrganizationRegistrationFormPage(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            child: const SizedBox(
                                height: 45,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Create Orgnaization Customer",
                                        style: hintTextStyle)))),
                        InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              Get.back();
                              Get.to(const PartnerRegistrationFormPage(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            child: const SizedBox(
                                height: 45,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Create Partner",
                                        style: hintTextStyle)))),
                        InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              Get.back();
                              Get.to(const ChannelPartnerRegistrationFormPage(),
                                  transition: Transition.rightToLeftWithFade);
                            },
                            child: const SizedBox(
                                height: 45,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Create Channel Partner",
                                        style: hintTextStyle)))),
                      ],
                    ),
                  ),
                ];
              },
            ),
            Bounce(
                duration: const Duration(milliseconds: 110),
                onPressed: () {
                  // Get.to(
                  //   const NotificationsPage(),
                  //   transition: Transition.rightToLeftWithFade,
                  // );
                },
                child: const Icon(Icons.filter_alt,
                    size: 20, color: AppColors.scaffoldBackgroundColor)),
            const SizedBox(width: SpacingUtils.space15),
          ],
          bottom: TabBar(
            labelStyle: normalTextStyle,
            labelColor: AppColors.darkTextColor,
            unselectedLabelStyle: smallDullTextStyle,
            indicatorColor: AppColors.scaffoldBackgroundColor,
            labelPadding: EdgeInsets.zero,
            tabs: [
              for (final t in [
                'User',
                'Chat',
                'Quotes',
                'Orders',
                'Invoice',
                'Id Card',
              ])
                Container(
                    width: double.infinity,
                    color: Colors.white, // color same as background
                    child: Tab(text: '$t')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _usersView(),
            ChatPage(),
            _quotesView(),
            _ordersView(),
            _invoiceView(),
            SingleChildScrollView(),
          ],
        ),
      ),
    );
  }

  _usersView() {
    return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: Get.width),
            child: Column(
              children: [
                // Container(
                //   height: 45,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     //Center Row contents horizontally,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     //Center Row contents vertically,
                //     // ignore: prefer_const_literals_to_create_immutables
                //     children: [
                //       Expanded(
                //         child: Text(
                //           'h',
                //           textAlign: TextAlign.center,
                //           style: normalTextStyle,
                //         ),
                //         flex: 30,
                //       ),
                //       Expanded(
                //         child: Text(
                //           'h',
                //           textAlign: TextAlign.center,
                //           style: normalTextStyle,
                //         ),
                //         flex: 50,
                //       ),
                //       Expanded(
                //         child: Text(
                //           'j',
                //           textAlign: TextAlign.center,
                //           style: normalTextStyle,
                //         ),
                //         flex: 20,
                //       )
                //     ],
                //   ),
                //   decoration: BoxDecoration(
                //       color: Colors.orange.shade50,
                //       border: Border.all(color: Colors.black45, width: 0.3)),
                // ),

                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.to(const UserList(),
                              transition: Transition.rightToLeftWithFade);
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //Center Row contents horizontally,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //Center Row contents vertically,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(
                                child: Text(
                                  'UKG (A)',
                                  textAlign: TextAlign.center,
                                  style: mainColorTextStyle,
                                ),
                                flex: 20,
                              ),
                              Expanded(
                                child: Text(
                                  'Complete 27',
                                  textAlign: TextAlign.center,
                                  style: mainColorTextStyle,
                                ),
                                flex: 20,
                              ),
                              Expanded(
                                child: Text(
                                  'Pending 3',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.red),
                                ),
                                flex: 20,
                              )
                            ],
                          ),
                          constraints: BoxConstraints(
                              minHeight: 47,
                              minWidth: double.infinity,
                              maxHeight: 400),
                          decoration: BoxDecoration(
                              color: index % 2 != 0
                                  ? AppColors.scaffoldBackgroundColor
                                  : Colors.blueGrey.shade50,
                              border: Border.all(
                                  color: Colors.black45, width: 0.3)),
                        ),
                      );
                    }),
              ],
            )));
  }

  _chatView() {
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
              Icon(
                Icons.search,
                color: AppColors.mainDarkColor,
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
                              Get.to(const UserRegistrationFormPage(),
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
                                // Get.to(const ReportPostPage(),
                                //     transition:
                                //         Transition.rightToLeftWithFade);
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
              Icon(
                Icons.filter_alt_outlined,
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
            return InkWell(
              onTap: () {
                // Get.to(const AboutRegisteredAboutRegisteredUserPage(),
                //     transition: Transition.rightToLeftWithFade);
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
            InkWell(
              onTap: () {
                Get.to(
                  CreateQuotePage(),
                );
              },
              child: Row(children: [
                Text("Create Quote", style: mainColorTextStyle),
                const SizedBox(width: SpacingUtils.space10),
                Icon(
                  Icons.add,
                  color: AppColors.mainDarkColor,
                ),
              ]),
            ),
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
