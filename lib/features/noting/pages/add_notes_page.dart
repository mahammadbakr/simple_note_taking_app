import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/features/noting/widgets/note_appbar_widget.dart';

class AddNotesPage extends StatefulWidget {
  static const String routeName = '/notes/add';
  const AddNotesPage({super.key});

  @override
  State<AddNotesPage> createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: NoteAppbarWidget(
        title: 'Add',
      ),
      body: Center(
        child: Text('add page'),
      ),
    );
  }
}
