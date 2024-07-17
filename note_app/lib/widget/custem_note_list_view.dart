import 'package:flutter/material.dart';
import 'package:note_app/widget/item_note.dart';

class CustemNoteListView extends StatelessWidget {
  const CustemNoteListView({super.key});

  final dataColor = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          padding: EdgeInsets.zero,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ItemNotes(),
            );
          }),
    );
  }
}
