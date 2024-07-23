import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note.dart';
import 'package:note_app/widget/note_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(
              side: BorderSide(color: Colors.white),
            ),
            backgroundColor: Colors.grey.shade600,
            foregroundColor: Colors.greenAccent,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  )),
                  context: context,
                  builder: (context) {
                    return const AddNoteFromBottemSheet();
                  });
            },
            child: const Icon(Icons.add),
          ),
          body: const NoteListView(),
        ));
  }
}
