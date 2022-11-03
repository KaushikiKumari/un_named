import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:un_named/pages/dashboard/user/communications/Own_Message_Tab.dart';
import 'package:un_named/pages/dashboard/user/communications/Reply_Message_Tab.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool isTyppingStart = false;
  bool show = false;
  FocusNode focusNode = FocusNode();
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          show = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
          color: Colors.white60,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: WillPopScope(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height - 150,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Reply_message_tab(),
                        Own_Message_Tab(),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1,
                        child: Card(
                            child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              onChanged: (val) {},
                              controller: _controller,
                              focusNode: focusNode,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: const InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.send,
                                          color: AppColors.mainDarkColor,
                                          size: 20)),
                                  border: InputBorder.none,
                                  hintText: "Type a message...",
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.black26)),
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onWillPop: () {
              if (show) {
                setState(() {
                  show = false;
                });
              } else {
                Navigator.pop(context);
              }
              return Future.value(false);
            },
          )),
    );
  }
}
