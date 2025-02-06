import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/widget/custem_app_bar.dart';

import 'custem_note_list_view.dart';

class NoteListView extends StatefulWidget {
  const NoteListView({
    super.key,
  });

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustemAppbar(
          icon: Icons.search,
          title: 'Notes',
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: CustemNoteListView()),
      ],
    );
  }
}
