import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_note_taking_app/core/gen/assets.gen.dart';
import 'package:simple_note_taking_app/core/theme/theme.dart';
import 'package:simple_note_taking_app/features/noting/widgets/text_widget.dart';
import 'package:simple_note_taking_app/models/note_model.dart';
import 'package:simple_note_taking_app/pages.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ViewNotesPage.routeName);
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: kcBlack.withOpacity(0.4),
          child: TextWidget(
            note.id.toString(),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        title: TextWidget(
          note.title,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        subtitle: TextWidget(
          note.description,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(Assets.icons.edit),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.icons.delete,
                color: kcRed,
              ),
            )
          ],
        ),
      ),
    );
  }
}