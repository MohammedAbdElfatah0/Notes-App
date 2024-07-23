import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/cubits/note_cubit/note_cubit_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/item_note.dart';

class CustemNoteListView extends StatelessWidget {
  const CustemNoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              if (notes.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ItemNotes(
                    note: notes[index],
                  ),
                );
              } else {
                return const Center(
                  child: Text(
                    'No Notes available',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
