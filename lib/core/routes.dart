import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/features/noting/pages/edit_notes_page.dart';
import 'package:simple_note_taking_app/pages.dart';


Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  SplashPage.routeName: (context) => const SplashPage(),
  NotesPage.routeName: (context) => const NotesPage(),
  AddNotesPage.routeName: (context) => const AddNotesPage(),
  EditNotesPage.routeName: (context) => const EditNotesPage(),
};
