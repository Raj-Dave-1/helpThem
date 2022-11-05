// 🚩 Dada Ki Jay Ho 🚩


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sih_help_disabled_people/providers/app_setting_provider.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const DynamicText("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile & User Name
            Padding(
              padding: const EdgeInsets.all(Insets.lg),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: size.height * .07,
                  ),
                  HSpace.med,
                  Column(
                    children: const [
                      DynamicText(
                        "User Name",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: Insets.sm, horizontal: Insets.med),
              decoration: const BoxDecoration(
                color: Colors.grey
              ),
              child: Row(
                children: [
                  const DynamicText("Change Font Size"),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      context.read<AppSettingProvider>().setTextScaleFactor(TextScaleFactorEnum.small);
                    },
                    child: Row(
                      children: [
                        DynamicText(
                          (context.read<AppSettingProvider>().textScaleFactor == TextScaleFactorEnum.small) ? "Small" :
                          (context.read<AppSettingProvider>().textScaleFactor == TextScaleFactorEnum.medium) ? "Medium" : 
                          (context.read<AppSettingProvider>().textScaleFactor == TextScaleFactorEnum.large) ? "Large" : "Extra Large"
                          ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}