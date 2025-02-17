import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class MoreScreen extends StatelessWidget {
  var arrMore = [
    {"icon": Icons.person, "txt": "Account"},
    {"icon": CupertinoIcons.chat_bubble_fill, "txt": "Chats"},
    {"icon": Icons.sunny, "txt": "Appearance"},
    {"icon": Icons.notifications_active, "txt": "Notifications"},
    {"icon": Icons.privacy_tip, "txt": "Privacy"},
    {"icon": Icons.folder, "txt": "Data Usage"},
    {"icon": Icons.help, "txt": "Help"},
    {"icon": Icons.mail, "txt": "Invite Your Friends"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
            context: context,
            text: "More",
            fontsize: 18,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgUrl: "darkprofile.png")
                : UiHelper.CustomImage(imgUrl: "lightprofile.png"),
            title: UiHelper.CustomText(
                context: context,
                text: "Almayra Zamzamy",
                fontsize: 14,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            subtitle: UiHelper.CustomText(
                context: context, text: "+62 1309 - 1710 - 1920", fontsize: 12),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.forward)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    arrMore[index]["icon"] as IconData,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.icondarkmode
                        : AppColors.iconlightmode,
                  ),
                  title: UiHelper.CustomText(
                      context: context,
                      text: arrMore[index]["txt"].toString(),
                      fontsize: 14),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
              itemCount: arrMore.length,
            ),
          )
        ],
      ),
    );
  }
}
