// ignore: depend_on_referenced_packages
import 'dart:convert';

import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_note_taking_app/core/local_storage.dart';
import 'package:simple_note_taking_app/core/toast.dart';
import 'package:simple_note_taking_app/models/note_model.dart';

import '../../../../core/theme/theme.dart';
import '../../../../injectable_config.dart';

part 'note_event.dart';
part 'note_state.dart';

NotesBloc get notesBloc => getIt<NotesBloc>();

@LazySingleton()
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  // notes
  List<NoteModel> _notes = [];
  List<NoteModel> get notes => _notes;

  NotesBloc() : super(NotesInitial()) {
    on<GetNotesEvent>((event, emit) async {
      emit(GetNotesLoadingState());
      try {
        final String notesString = await localStorageGetString('notes');
        final decoded = jsonDecode(notesString);
        if (decoded != null) {
          _notes =
              decoded.map<NoteModel>((e) => NoteModel.fromJson(e)).toList();

          emit(GetNotesSuccessState());
        } else {
          showToastFlutter('Get Note Error !', color: kcRed);
          emit(GetNotesErrorState());
        }
      } catch (e) {
        showToastFlutter('unknown_error', color: kcRed);
        emit(GetNotesErrorState());
      }
    });

    on<AddNoteEvent>((event, emit) async {
      emit(AddNoteLoadingState());
      try {
        _notes.add(event.noteModel);
        final decoded = jsonEncode(_notes);

        await localStorageSetString('notes', decoded);
        emit(AddNoteSuccessState());
      } catch (e) {
        showToastFlutter('unknown_error', color: kcRed);
        emit(AddNoteErrorState());
      }
    });


    on<EditNoteEvent>((event, emit) async {
      emit(EditNoteLoadingState());
      try {
        _notes.removeWhere((element) => element.id == event.noteModel.id);
        _notes.add(event.noteModel);
        final decoded = jsonEncode(_notes);
        await localStorageSetString('notes', decoded);
        emit(EditNoteSuccessState());
      } catch (e) {
        showToastFlutter('unknown_error', color: kcRed);
        emit(EditNoteErrorState());
      }
    });



     on<DeleteNoteEvent>((event, emit) async {
      emit(DeleteNoteLoadingState());
      try {
        _notes.removeWhere((element) => element.id == event.noteModel.id);
        final decoded = jsonEncode(_notes);
        await localStorageSetString('notes', decoded);
        emit(DeleteNoteSuccessState());
      } catch (e) {
        showToastFlutter('unknown_error', color: kcRed);
        emit(DeleteNoteErrorState());
      }
    });
  }
}
