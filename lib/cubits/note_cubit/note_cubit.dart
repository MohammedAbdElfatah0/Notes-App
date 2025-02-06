import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/note_cubit/note_cubit_state.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes;
  fetchAllNote() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
    emit(NoteSuccess());
  }
}
