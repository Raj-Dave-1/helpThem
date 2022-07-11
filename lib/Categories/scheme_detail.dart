// 🚩 Dada Ki Jay Ho 🚩



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_help_disabled_people/utils/utils.dart';

class SchemeDetailScreen extends StatelessWidget {
  const SchemeDetailScreen({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DynamicText(""),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(CupertinoIcons.speaker_3_fill),
          ),
          HSpace.med,
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert),
          ),
          HSpace.med,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Insets.lg),
          child: Column(
            children: [
              DynamicText( 
                content,
                style: const TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}