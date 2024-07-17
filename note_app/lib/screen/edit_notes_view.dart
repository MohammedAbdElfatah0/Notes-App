import 'package:flutter/material.dart';
import 'package:note_app/widget/custem_app_bar.dart';
import 'package:note_app/widget/custem_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustemAppbar(
                icon: Icons.done,
                title: 'Edit Note',
              ),
              CustemTextField(textHint: 'Edit title'),
              SizedBox(
                height: 50,
              ),
              CustemTextField(
                textHint: 'Edit content',
                maxLines: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
