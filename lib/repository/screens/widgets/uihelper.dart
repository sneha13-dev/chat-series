import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static CustomText(
      {required BuildContext context, // Added context parameter

      required String text,
      required double fontsize,
      String? fontfamily,
      FontWeight? fontweight,
      Color? color}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          color: color ??
              (Theme.of(context).brightness == Brightness.dark
                  ? AppColors.textdarkmode
                  : AppColors.textlightmode),
          fontWeight: fontweight ?? FontWeight.normal),
    );
  }

  static CustomButton(
      {required String buttonname,
      required VoidCallback callback,
      Color? buttonColor}) {
    return SizedBox(
      height: 52,
      width: 350,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonlightmode,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            buttonname,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold,fontFamily: "bold"),
          )),
    );
  }

  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required TextInputType textinputtype,
      required BuildContext context,required IconData icondata}) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.containerdarkmode
              : AppColors.containerlightmode,
              borderRadius: BorderRadius.circular(7)
      ),
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icondata,color: AppColors.iconlight,),
          hintStyle: TextStyle(color: Theme.of(context).brightness==Brightness.dark? AppColors.hintDARKmode:AppColors.hintlightmode,fontSize: 14),
          border: InputBorder.none
        ),
      )
    );
  }
}