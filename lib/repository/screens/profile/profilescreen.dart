import 'package:chatapp/repository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(CupertinoIcons.back)),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.scaffolddark
              : AppColors.scaffoldlight,
          title: UiHelper.CustomText(
              context: context,
              text: "Your profile",
              fontsize: 18,
              fontweight: FontWeight.bold,
              fontfamily: "bold"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Theme.of(context).brightness == Brightness.dark
                  ? UiHelper.CustomImage(imgUrl: "darkprofile.png")
                  : UiHelper.CustomImage(imgUrl: "lightprofile.png"),
              SizedBox(
                height: 30,
              ),
              UiHelper.CustomTextField(
                  controller: firstnamecontroller,
                  text: "First Name(Required)",
                  textinputtype: TextInputType.name,
                  context: context,icondata: Icons.person),
              SizedBox(
                height: 10,
              ),
              UiHelper.CustomTextField(
                  controller: lastnamecontroller,
                  text: "Last Name(Required)",
                  textinputtype: TextInputType.name,
                  context: context,icondata: CupertinoIcons.person_2),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: UiHelper.CustomButton(
            buttonname: "Save",
            callback: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BottomNavScreen()));
            }));
  }
}
