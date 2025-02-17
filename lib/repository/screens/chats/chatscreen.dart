import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrchat = [
    {
      "img": "Avatar.png",
      "name": "Sneha",
      "msg": "Good morning did you sleep well?",
      "date": "Today",
      "msgcount": "1"
    },
    {
      "img": "Avatar (1).png",
      "name": "Happi",
      "msg": "How it is going?",
      "date": "17/6",
      "msgcount": "0"
    },
    {
      "img": "Avatar (2).png",
      "name": "Samaira",
      "msg": "Aight noted",
      "date": "17/6",
      "msgcount": "1"
    }
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
            text: "Chats",
            fontsize: 18,
            fontweight: FontWeight.bold,
            fontfamily: "bold"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.mark_chat_unread_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Row(children: [
          SizedBox(
            width: 25,
          ),
          UiHelper.CustomImage(imgUrl: "Story.png"),
          SizedBox(
            width: 30,
          ),
          UiHelper.CustomImage(imgUrl: "Story (1).png"),
          SizedBox(
            width: 30,
          ),
          UiHelper.CustomImage(imgUrl: "Story (2).png")
        ]),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
            ),
            UiHelper.CustomText(
                context: context,
                text: "Your Story",
                fontsize: 10,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(
                context: context,
                text: "Midala Hu....",
                fontsize: 10,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(
                context: context,
                text: "Salsabila.....",
                fontsize: 10,
                fontweight: FontWeight.bold,
                fontfamily: "bold")
          ],
        ),
        Divider(
          color: Color(0XFFADB5BD),
        ),
        SizedBox(height: 20,),
        UiHelper.CustomTextField(controller: searchController, text: "Search", textinputtype: TextInputType.name, context: context, icondata: Icons.search),
        SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListTile(
                  leading: UiHelper.CustomImage(
                      imgUrl: arrchat[index]["img"].toString()),
                  title: UiHelper.CustomText(
                      context: context,
                      text: arrchat[index]["name"].toString(),
                      fontsize: 14),
                  subtitle: UiHelper.CustomText(
                      context: context,
                      text: arrchat[index]["msg"].toString(),
                      fontsize: 12,
                      color: Color(0XFFADB5BD)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                          context: context,
                          text: arrchat[index]["date"].toString(),
                          fontsize: 10,
                          color: Color(0XFFA4A4A4)),
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0XFFD2D5F9),
                        child: UiHelper.CustomText(
                            context: context,
                            text: arrchat[index]["msgcount"].toString(),
                            fontsize: 10),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: arrchat.length,
          ),
        )
      ]),
    );
  }
}
