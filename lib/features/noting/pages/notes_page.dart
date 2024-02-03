import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/core/gen/assets.gen.dart';
import 'package:simple_note_taking_app/core/theme/theme.dart';
import 'package:simple_note_taking_app/features/noting/widgets/floating_widget.dart';
import 'package:simple_note_taking_app/features/noting/widgets/note_appbar_widget.dart';

class NotesPage extends StatefulWidget {
  static const String routeName = '/notes';
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: NoteAppbarWidget(
        icon: Assets.icons.note,
        title: 'Notes',
      ),
      body: ListView(
        children: [],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kcWhite,
        onPressed: () {},
        isExtended: true,
        label: AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                FadeTransition(
                  opacity: animation,
                  child: SizeTransition(
                    sizeFactor: animation,
                    axis: Axis.horizontal,
                    child: child,
                  ),
                ),
            child: const FloatingButton()),
      ),
    );
  }
}
