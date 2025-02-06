import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screen/edit_view.dart';

class ItemNotes extends StatelessWidget {
  const ItemNotes({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return EditView(
            note: note,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              iconColor: Colors.black,
              textColor: Colors.black,
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNote();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 32,
                ),
              ),
              title: Text(
                note.title,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.date,
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
