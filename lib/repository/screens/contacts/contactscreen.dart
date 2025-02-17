import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {"img": "Avatar.png", "name": "Sneha", "lastseen": "Last seen yesterday"},
    {"img": "Avatar (1).png", "name": "Happi", "lastseen": "Online"},
    {
      "img": "Avatar (2).png",
      "name": "Samaira",
      "lastseen": "Last seen 3 hours ago"
    },
    {"img": "Avatar (3).png", "name": "Nafisa Gitari", "lastseen": "Online"},
    {"img": "Avatar (4).png", "name": "Raki Devon", "lastseen": "Online"},
    {"img": "Frame 3293.png", "name": "Salsabila Akira", "lastseen": "Online"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
            context: context, text: "Contacts", fontsize: 18),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomTextField(
              controller: searchController,
              text: "Search",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.search),
         /* SizedBox(
            height: 10,
          ),*/
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: UiHelper.CustomImage(
                          imgUrl: arrContacts[index]["img"].toString()),
                      title: UiHelper.CustomText(
                          context: context,
                          text: arrContacts[index]["name"].toString(),
                          fontsize: 14,
                          fontweight: FontWeight.w600),
                      subtitle: UiHelper.CustomText(
                          context: context,
                          text: arrContacts[index]["lastseen"].toString(),
                          fontsize: 12,
                          color: Color(0XFFADB5BD)),
                    ));
              },
              itemCount: arrContacts.length,
            ),
          )
        ],
      ),
    );
  }
}
