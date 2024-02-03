import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/features/noting/widgets/note_appbar_widget.dart';

class ViewNotesPage extends StatefulWidget {
  static const String routeName = '/notes/view';
  const ViewNotesPage({super.key});

  @override
  State<ViewNotesPage> createState() => _ViewNotesPageState();
}

class _ViewNotesPageState extends State<ViewNotesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: NoteAppbarWidget(
        title: 'View',
      ),
      body: Center(
        child: Text('view page'),
      ),
    );
  }
}
