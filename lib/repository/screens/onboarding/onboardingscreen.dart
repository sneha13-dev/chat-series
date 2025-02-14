import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/repository/screens/login/loginscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffolddark,
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubits>(context).toggletheme();
              },
              icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "onboarding.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Connect easily with",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
            UiHelper.CustomText(
                text: "Your family and friends",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
            UiHelper.CustomText(
                text: "Over countries",
                fontsize: 24,
                fontfamily: "bold",
                fontweight: FontWeight.bold,
                context: context),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          buttonname: "Start Button",
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          }),
      /*floatingActionButton: UiHelper.CustomButton(buttonname: "Start Messaging",callback: (){}),
*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
