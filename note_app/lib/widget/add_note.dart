import 'package:flutter/material.dart';
import 'package:note_app/widget/custem_button.dart';
import 'package:note_app/widget/custem_text_field.dart';

class AddNoteFromBottemSheet extends StatelessWidget {
  const AddNoteFromBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustemTextField(
              textHint: 'title ',
            ),
            SizedBox(
              height: 25,
            ),
            CustemTextField(
              textHint: 'context',
              maxLines: 5,
            ),
            SizedBox(
              height: 85,
            ),
            CustemButton(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}