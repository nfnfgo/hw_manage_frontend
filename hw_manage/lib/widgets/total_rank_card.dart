// Main Program File
import 'package:flutter/material.dart';

// Plug
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

// apis
import 'package:hw_manage/apis/user.dart';
import 'package:hw_manage/models/user.dart';

// widgets
import 'package:hw_manage/widgets/user_card.dart';

class TotalRankCard extends StatefulWidget {
  const TotalRankCard({Key? key}) : super(key: key);

  @override
  State<TotalRankCard> createState() => _TotalRankCardState();
}

class _TotalRankCardState extends State<TotalRankCard> {
  @override
  Widget build(BuildContext context) {
    List<Widget> userWidgetList = [];

    getUserListWidget() async {
      List userList = await get_user_list_model();
      User user;
      for (user in userList) {
        userWidgetList.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: UserCard(user),
        ));
        print(user);
      }
    }

    return FutureBuilder(
        future: getUserListWidget(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // SmartDialog.showLoading();
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              SmartDialog.dismiss();
              return Text('Can\'t Connect to Server');
            }
            SmartDialog.dismiss();
            return ListView.builder(
              shrinkWrap: false,
              itemCount: userWidgetList.length,
              itemBuilder: ((context, index) {
                return userWidgetList[index];
              }),
            );
          }
          SmartDialog.showLoading();
          return Container();
        });
  }
}
