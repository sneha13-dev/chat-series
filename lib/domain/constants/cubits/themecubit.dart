import 'package:chatapp/domain/constants/cubits/themestates.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubits extends Cubit<ThemeStates>{
  ThemeCubits(): super (LightThemeStates());
  void toggletheme(){
    if (state is LightThemeStates){
      emit(DarkThemeStates());
    }
    else {
      emit(LightThemeStates());
    }
  }

}