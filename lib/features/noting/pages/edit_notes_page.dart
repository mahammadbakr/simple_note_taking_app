import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/features/noting/widgets/note_appbar_widget.dart';

class EditNotesPage extends StatefulWidget {
  static const String routeName = '/notes/edit';
  const EditNotesPage({super.key});

  @override
  State<EditNotesPage> createState() => _EditNotesPageState();
}

class _EditNotesPageState extends State<EditNotesPage> {
  @override
  Widget build(BuildContext context) {
       return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: NoteAppbarWidget(
        title: 'Edit',
      ),
      body: Center(
        child: Text('edit page'),
      ),
    );
  }
}
