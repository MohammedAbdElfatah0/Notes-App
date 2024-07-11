import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note.dart';
import 'package:note_app/widget/custem_app_bar.dart';
import 'package:note_app/widget/custem_note_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: true,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(
              side: BorderSide(color: Colors.white),
            ),
            backgroundColor: Colors.grey.shade600,
            foregroundColor: Colors.greenAccent,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return AddNoteFromBottemSheet();
                  });
            },
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              CustemAppbar(),
              SizedBox(
                height: 10,
              ),
              Expanded(child: CustemNoteListView()),
            ],
          ),
        ));
  }
}
