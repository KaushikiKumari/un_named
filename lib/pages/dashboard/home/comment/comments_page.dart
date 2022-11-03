import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.mainDarkColor,
          centerTitle: false,
          title: const Text("Comments", style: whiteColorTextStyle),
        ),
        body: Container(
          color: Colors.white60,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: ListView.separated(
                    itemCount: 2,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(height: 1.5, color: Colors.grey.shade500),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade400,
                                        spreadRadius: 1,
                                        offset: const Offset(0, 3),
                                        blurRadius: 3,
                                      )
                                    ],
                                    border: Border.all(
                                        width: 1,
                                        color: AppColors.mainDarkColor),
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                    // image: const DecorationImage(
                                    //     image: AssetImage(
                                    //       'assets/images/dp.jpeg',
                                    //     ),
                                    //     fit: BoxFit.cover)
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text("Kaushiki kumari",
                                              style: normalTextStyle),
                                          const SizedBox(width: 5),
                                          SizedBox(
                                            width: Get.width / 3,
                                            child: const Text(
                                                "Congratulations!",
                                                style: smallTextStyle),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text("6 days ago",
                                              style: altraSmallTextStyle),
                                          const SizedBox(width: 10),
                                          const Text("1 Like",
                                              style: altraSmallTextStyle),
                                          const SizedBox(width: 10),
                                          const Text("Like",
                                              style: altraSmallTextStyle),
                                          const SizedBox(width: 10),
                                          const Text("Reply",
                                              style: altraSmallTextStyle),
                                          const SizedBox(width: 10),
                                          PopupMenuButton(
                                            offset: const Offset(0,
                                                45), // SET THE (X,Y) POSITION
                                            iconSize: 25,
                                            icon: const Center(
                                              child: Icon(
                                                Icons.more_horiz,
                                                size: 25,
                                                color: Colors.black45,
                                              ),
                                            ),
                                            elevation: 3,

                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  enabled:
                                                      false, // DISABLED THIS ITEM
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: const SizedBox(
                                                            height: 45,
                                                            child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                    "Reply",
                                                                    style:
                                                                        smallTextStyle))),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: const SizedBox(
                                                            height: 45,
                                                            child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                    "Like",
                                                                    style:
                                                                        smallTextStyle))),
                                                      ),
                                                      InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                            // Get.to(
                                                            //     const ReportCommentPage(),
                                                            //     transition:
                                                            //         Transition
                                                            //             .rightToLeftWithFade);
                                                          },
                                                          child: const SizedBox(
                                                              height: 45,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Text(
                                                                      "Report Comment",
                                                                      style:
                                                                          smallTextStyle)))),
                                                      InkWell(
                                                          onTap: () {
                                                            Get.back();
                                                            Fluttertoast
                                                                .showToast(
                                                              msg:
                                                                  "User is blocked!",
                                                              toastLength: Toast
                                                                  .LENGTH_SHORT,
                                                              gravity:
                                                                  ToastGravity
                                                                      .CENTER,
                                                            );
                                                          },
                                                          child: const SizedBox(
                                                              height: 45,
                                                              child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Text(
                                                                      "Block User",
                                                                      style:
                                                                          smallTextStyle)))),
                                                    ],
                                                  ),
                                                ),
                                              ];
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),

                            // const Text("1d ago",
                            //     style: TextStyle(
                            //       color: AppColors.tinnyTextColor,
                            //       fontSize: 12,
                            //       fontWeight: FontWeight.w500,
                            //     ))
                          ],
                        ),
                      );
                    }),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 58,
                          child: Card(
                              elevation: 5,
                              margin: const EdgeInsets.fromLTRB(3, 0, 3, 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextFormField(
                                onChanged: (val) {
                                  setState(() {});
                                },
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: IconButton(
                                      icon: const Icon(
                                          Icons.emoji_emotions_outlined,
                                          color: Colors.grey),
                                      onPressed: () {}),
                                  hintText: "Write a comment..",
                                  contentPadding: const EdgeInsets.all(5),
                                  suffixIcon: const Visibility(
                                    child: IconButton(
                                        icon: Icon(Icons.camera_alt,
                                            color: Colors.grey),
                                        onPressed: null),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 0, 5, 8),
                          child: Bounce(
                            duration: const Duration(milliseconds: 110),
                            onPressed: () {},
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  //  gradient: AppColors.gradientButtonColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      spreadRadius: 1,
                                      offset: const Offset(0, 3),
                                      blurRadius: 3,
                                    )
                                  ],
                                  border:
                                      Border.all(width: 1, color: Colors.pink),
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey,
                                ),
                                child: const Center(
                                  child: Icon(Icons.send,
                                      color: Colors.white, size: 23),
                                )),
                          ),
                        ),
                      ],
                    ),
                    // show ? emojiselect() : Container(),
                    // show
                    // ? Container(height: 5, width: 5, color: Colors.red)
                    //     : Container(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget bottomsheet() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 278,
      child: Card(
          margin: const EdgeInsets.all(18),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: InkWell(
              // splashColor: Colors.deepPurple,
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconcreation(
                          Icons.insert_photo, Colors.purple, "Gallery"),
                      iconcreation(Icons.mic, Colors.pink, "Record"),
                      iconcreation(
                          Icons.voice_chat, Colors.indigo, "Voice Chat"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconcreation(
                          Icons.picture_as_pdf_sharp, Colors.blueGrey, "Pdfs"),
                      iconcreation(
                          Icons.video_call, Colors.blue.shade800, "Videos"),
                      iconcreation(Icons.video_collection,
                          Colors.deepOrangeAccent, "Collections"),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget iconcreation(IconData icon, Color color, String text) {
    return Column(children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(icon, size: 29, color: Colors.white),
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    ]);
  }

// Widget emojiselect() {
//   return EmojiPicker(
//     rows: 3,
//     columns: 7,
//     buttonMode: ButtonMode.MATERIAL,
//     recommendKeywords: ["racing", "horse"],
//     numRecommended: 10,
//     onEmojiSelected: (emoji, category) {
//       print(emoji);
//     },
//   );
// }
}
