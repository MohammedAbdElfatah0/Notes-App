import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/color_list_view.dart';
import 'package:note_app/widget/custem_button.dart';
import 'package:note_app/widget/custem_text_form_field.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({super.key});

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustemTextField(
            textHint: 'title ',
            onSava: (sava) {
              title = sava;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustemTextField(
            textHint: 'context',
            maxLines: 5,
            onSava: (sava) {
              subTitle = sava;
            },
          ),
          const SizedBox(
            height: 55,
          ),
          const ColorListItem(),
          const SizedBox(
            height: 55,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustemButton(
                isLoding: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime giveNow = DateTime.now();
                    var time = DateFormat.yMMMEd().format(giveNow).toString();

                    NoteModel note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: time,
                        color: Colors.amber.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
