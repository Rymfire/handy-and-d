import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterNotesTab extends StatelessWidget {
  const CharacterNotesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            text: "Notes",
            textColor: Color(Brand.SECONDARY),
            defaultStyle: HEADER),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color(Brand.SECONDARY)),
      ),
      body: const Center(
        child: Text("Notes"),
      ),
    );
  }
}
