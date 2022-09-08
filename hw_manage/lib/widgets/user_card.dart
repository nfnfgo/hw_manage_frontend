// Main Program File
import 'package:flutter/material.dart';
import 'package:hw_manage/apis/user.dart';

//data models
import 'package:hw_manage/models/user.dart';

// Plug
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class UserCard extends StatelessWidget {
  // const UserCard({Key? key}) : super(key: key);
  User user;
  UserCard(this.user, {super.key});

  Color getUserColor(User user) {
    if (user.point! >= 100) {
      return Colors.red[500]!;
    }
    return Colors.grey[500]!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: getUserColor(user), borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: Text(
              user.name ?? 'Error',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 2, bottom: 10),
            child: Text(
              'UniqueID:${user.id.toString()}',
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 15),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 2, bottom: 10),
            child: Text(
              '${user.point.toString()}',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
