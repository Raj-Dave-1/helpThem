// 🚩 Dada Ki Jay Ho 🚩


import 'package:flutter/cupertino.dart';

class Insets{
  static const double sm = 6.0;
  static const double med = 12.0;
  static const double lg = 24.0;
  static const double xl = 48.0;
  static const double xxl = 68.0;
}

class HSpace{
  static const Widget sm = SizedBox(width: Insets.sm);
  static const Widget med = SizedBox(width: Insets.med);
  static const Widget lg = SizedBox(width: Insets.lg);
  static const Widget xl = SizedBox(width: Insets.xl);
  static const Widget xxl = SizedBox(width: Insets.xxl);
}

class VSpace{
  static const Widget sm = SizedBox(height: Insets.sm);
  static const Widget med = SizedBox(height: Insets.med);
  static const Widget lg = SizedBox(height: Insets.lg);
  static const Widget xl = SizedBox(height: Insets.xl);
  static const Widget xxl = SizedBox(height: Insets.xxl);
}