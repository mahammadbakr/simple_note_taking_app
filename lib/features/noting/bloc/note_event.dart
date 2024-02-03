part of 'note_bloc.dart';

sealed class NotesEvent extends Equatable {
  const NotesEvent();

  @override
  List<Object> get props => [];
}

class GetNotesEvent extends NotesEvent {
  const GetNotesEvent();
}

class AddNoteEvent extends NotesEvent {
  final NoteModel noteModel;
  const AddNoteEvent(this.noteModel);

  @override
  List<Object> get props => [noteModel];
}

class EditNoteEvent extends NotesEvent {
  final NoteModel noteModel;
  const EditNoteEvent(this.noteModel);

  @override
  List<Object> get props => [noteModel];
}

class DeleteNoteEvent extends NotesEvent {
  final NoteModel noteModel;
  const DeleteNoteEvent(this.noteModel);

  @override
  List<Object> get props => [noteModel];
}
