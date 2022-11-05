// 🚩 Dada Ki Jay Ho 🚩



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sih_help_disabled_people/utils/consts.dart';



class AppSettingProvider extends ChangeNotifier{
  TextScaleFactorEnum textScaleFactor = TextScaleFactorEnum.medium;

  void setTextScaleFactor(TextScaleFactorEnum value){
    textScaleFactor = value;
    notifyListeners();
  }

  
}