import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_state.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/widget/add_form_note.dart';

class AddNoteFromBottemSheet extends StatelessWidget {
  const AddNoteFromBottemSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('fail:: ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 12.0,
                left: 12.0,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddFormNote(),
              ),
            ),
          );
        },
      ),
    );
  }
}
