import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class Reply_message_tab extends StatefulWidget {
  @override
  _Reply_message_tabState createState() => _Reply_message_tabState();
}

class _Reply_message_tabState extends State<Reply_message_tab> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 1.2,
          ),
          child: DelayedDisplay(
              child: Card(
                  elevation: 3,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 60, 25),
                        child: Text(
                            "Hello Kaushiki,\nI hope you remember about your appoinment today with us.",
                            style: inputTextStyle),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 10,
                        child: Text("20:58 pm",
                            style:
                                TextStyle(fontSize: 11, color: Colors.black26)),
                      )
                    ],
                  )))),
    );
  }
}
