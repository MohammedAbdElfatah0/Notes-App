import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/color_edit.dart';
import 'package:note_app/widget/custem_app_bar.dart';
import 'package:note_app/widget/custem_text_form_field.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                CustemAppbar(
                  title: 'Edit Note',
                ),
                CustemTextField(
                  onChanged: (val) {
                    title = val;
                  },
                  textHint: 'Edit title',
                ),
                const SizedBox(
                  height: 50,
                ),
                CustemTextField(
                  onChanged: (val) {
                    content = val;
                  },
                  textHint: 'Edit content',
                  maxLines: 10,
                ),
                const SizedBox(
                  height: 55,
                ),
                ColorEdit(
                  note: widget.note,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
