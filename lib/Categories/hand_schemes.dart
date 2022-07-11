// 🚩 Dada Ki Jay Ho 🚩



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_help_disabled_people/Categories/scheme_detail.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';


final List<String> handSchemeContentList = [
  "This Scheme is Made for .......Information is available on schemes such as assistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed.This Scheme is Made for .......\n\nInformation is available on schemes such as assistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed.This Scheme is Made for .......\n\nInformation is available on schemes \n\n such as assistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed.This Scheme is Made for .......\n\nInformation is available on schemes such as assistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed.\n\nInformation is available on schemes such as \nassistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed."
];


final List<String> schemeDescriptionList = [
  "This Scheme is Made for .......Information is available on schemes such as assistance to disabled persons for purchase or fitting of Aids and Appliances (ADIP Scheme), Deendayal Disabled Rehabilitation Scheme to promote voluntary action for persons with disabilities. Scheme of national awards for the empowerment of persons with disabilities can be accessed."
];

class HandSchemes extends StatelessWidget {
  const HandSchemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DynamicText("Schemes for Disabels By Hand"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
            SchemeCard(
              schemeDescription: schemeDescriptionList[0],
              schemeDetailScreen: SchemeDetailScreen(content: handSchemeContentList[0]),
            ),
          ],
        ),
      ),
    );
  }
}

class SchemeCard extends StatelessWidget {
  const SchemeCard({Key? key, required this.schemeDescription, required this.schemeDetailScreen}) : super(key: key);
  final String schemeDescription;
  final Widget schemeDetailScreen;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.med),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:Insets.med, horizontal: Insets.lg),
          child: Column(
            children: [
             DynamicText(schemeDescription),
              VSpace.med,
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(CupertinoIcons.speaker_3_fill),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (conntext)=>schemeDetailScreen)
                      );
                    }, 
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: Insets.med, horizontal: Insets.med),
                      child: DynamicText(
                        "Know More", 
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]
          ),
        )
      ),
    );
  }
}