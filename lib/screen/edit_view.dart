import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/edit_notes_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.note});
  
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: EditNotesView(
        note: note,
      ),
    ));
  }
}
