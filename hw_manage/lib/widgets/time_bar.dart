// Main Program File
import 'package:flutter/material.dart';

// Plug
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class TimeBar extends StatefulWidget {
  const TimeBar({Key? key}) : super(key: key);

  @override
  State<TimeBar> createState() => _TimeBarState();
}

class _TimeBarState extends State<TimeBar> {
  DateTime timeNow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).secondaryHeaderColor),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.update_rounded),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Data Update Time',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Divider(),
            Text(
              timeNow.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
    );
  }
}
