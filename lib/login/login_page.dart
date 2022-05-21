// 🚩 Dada Ki Jay Ho 🚩


import 'package:flutter/material.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Image Slider,
            const Expanded(flex: 3, child: SizedBox(),),
            // Login Options
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [  
                  loginOption('assets/images/login/google.png', "Login with Google", theme),
                  loginOption('assets/images/login/facebook.png', "Login with Facebook", theme),
                  loginOption('assets/images/login/email.png', "Login with Email", theme),
                ],
              ) 
            ),
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
      color: theme.primaryColor,
      border: Border.all(color: theme.colorScheme.secondary),
      borderRadius: BorderRadius.circular(Insets.med),
    ),
    child: Row(
      children: [
        Image.asset('d'),
        Text(loginOptionTitle)
      ],
    ),
  );
}