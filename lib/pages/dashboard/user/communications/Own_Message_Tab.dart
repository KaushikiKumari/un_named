import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:un_named/utils/app_colors.dart';
import 'package:un_named/utils/strings_style.dart';

class Own_Message_Tab extends StatefulWidget {
  @override
  _Own_Message_TabState createState() => _Own_Message_TabState();
}

class _Own_Message_TabState extends State<Own_Message_Tab> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 1.2,
          ),
          child: DelayedDisplay(
              child: Card(
                  elevation: 3,
                  color: AppColors.mainDarkColor,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 60, 25),
                        child: Text(
                            "Hello, Yes i remember, i will be there right on time.",
                            style: whiteColorTextStyle),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 10,
                        child: Row(
                          children: [
                            Text("20:59 pm",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white)),
                            SizedBox(width: 5),
                            Icon(Icons.done_all, size: 17, color: Colors.white),
                          ],
                        ),
                      )
                    ],
                  )))),
    );
  }
}
