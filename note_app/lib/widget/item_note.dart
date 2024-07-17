import 'package:flutter/material.dart';
import 'package:note_app/screen/edit_notes_view.dart';

class ItemNotes extends StatelessWidget {
  const ItemNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const EditNotesView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 32,
                ),
              ),
              title: Text(
                'Title Note',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Build your note here\nMohammed abdelfatah ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'Data: 7/11/2024',
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(.6)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
