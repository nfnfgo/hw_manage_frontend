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

  List<Color> getUserColor(User user) {
    if (user.point! >= 300) {
      return [Colors.red[400]!, Colors.red[900]!];
    } else if (user.point! >= 100) {
      return [Colors.blueGrey[400]!, Colors.blueGrey[800]!];
    } else if (user.point! >= 50) {
      return [Colors.blue[300]!, Colors.blue[800]!];
    } else if (user.point! >= 30) {
      return [
        Colors.grey[400]!,
        Color.lerp(Colors.grey[600], Colors.blue[400], 0.4)!
      ];
    } else if (user.point! >= 10) {
      return [Colors.grey[400]!, Colors.grey[600]!];
    }
    return [Colors.grey[600]!, Colors.grey[600]!];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          //color: getUserColor(user),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: getUserColor(user),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
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
