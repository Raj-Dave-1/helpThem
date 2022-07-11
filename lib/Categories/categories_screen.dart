// 🚩 Dada Ki Jay Ho 🚩


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_help_disabled_people/Categories/hand_schemes.dart';
import 'package:sih_help_disabled_people/settings/setting_screen.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingScreen()
                )
              );
            }, 
            icon: const Icon(CupertinoIcons.settings),
          ),
          HSpace.lg,
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            direction: Axis.horizontal,
            children: const [
              CategoriCard(
                title: "Hand", 
                imgSrc: 'assets/Images/categories/Background1.jpg',
                schemeList: HandSchemes(),
              ),
              CategoriCard(
                title: "Eyes", 
                imgSrc: 'assets/Images/categories/blind.png',
                schemeList: HandSchemes(),
              ),
              CategoriCard(
                title: "Deaf", 
                imgSrc: 'assets/Images/categories/ear.jpg',
                schemeList: HandSchemes(),
              ),
              CategoriCard(
                title: "Physical Disability", 
                imgSrc: 'assets/Images/categories/Man-wheelchair.jpg',
                schemeList: HandSchemes(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CategoriCard extends StatelessWidget {
  final String title;
  final String imgSrc;
  final Widget schemeList;

  const CategoriCard({Key? key,required this.title, this.imgSrc="", required this.schemeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final widthHeight = size.width * .45;
    return Padding(
      padding: const EdgeInsets.all(Insets.sm),
      child: ClipRRect(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (conntext)=>schemeList)
            );
          },
          child: Container(
            width: widthHeight,
            height: widthHeight,
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
              elevation: 5,
              child: Stack(
                children: [
                  Image.asset(
                    imgSrc,
                    height: widthHeight,
                    width: widthHeight,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: const Alignment(-0.4, 0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(Insets.sm),
                      child: FittedBox(
                        child: DynamicText(
                          title,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}