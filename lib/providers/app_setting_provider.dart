// 🚩 Dada Ki Jay Ho 🚩



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppSettingProvider extends ChangeNotifier{
  double textScaleFactor = 1;

  void setTextScaleFactor(double value){
    textScaleFactor = value;
    notifyListeners();
  }

  
}