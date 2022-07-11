// 🚩 Dada Ki Jay Ho 🚩


import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_help_disabled_people/utils/colors.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CupertinoSwitch(
              value:  AdaptiveTheme.of(context).mode.isDark,
              onChanged: (v){               
                  v ? AdaptiveTheme.of(context).setDark() : AdaptiveTheme.of(context).setLight();
              },
            ),
            // Image Slider
            Expanded(
              flex: 2,
              child: CarouselSlider(
                options: CarouselOptions(
                  disableCenter: true,
                  viewportFraction: 1,
                ),
                items: [
                  Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/login/image1.jpg',
                          ),
                        ),
                      ),
                      VSpace.lg,
                      const Text("Help Them To Have Better Future"),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Image.asset('assets/images/login/image2.jpg'),
                      ),
                      VSpace.lg,
                      const Text("Help Them To Have Better Future"),
                    ],
                  ),
                ],
              ),
            ),
            VSpace.xl,
            // Login Options
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [  
                    loginOption('assets/images/login/google.png', "Login with Google", theme),
                    loginOption('assets/images/login/facebook.png', "Login with Facebook", theme),
                    loginOption('assets/images/login/email.png', "Login with Email", theme),
                  ],
                ),
              ),
            ),
            TextButton(onPressed: (){}, child: const Text("Continue Without Login"))
          ],
        ) 
      ),
    );
  }
}



Widget loginOption(String pngImgPath, String loginOptionTitle, ThemeData theme) {
  return Container(
    padding: const EdgeInsets.all(Insets.med),
    decoration: BoxDecoration(
      color: AppColorsLight.btnColor1,
      border: Border.all(color: theme.colorScheme.secondary),
      borderRadius: BorderRadius.circular(Insets.med),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(pngImgPath, fit: BoxFit.contain, width: Insets.lg, height: Insets.lg),
        HSpace.med,
        Text(loginOptionTitle)
      ],
    ),
  );
}