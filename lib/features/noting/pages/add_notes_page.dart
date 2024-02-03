import 'package:flutter/material.dart';
import 'package:simple_note_taking_app/core/theme/theme.dart';
import 'package:simple_note_taking_app/features/noting/widgets/note_appbar_widget.dart';
import 'package:simple_note_taking_app/widgets/text_form_field.dart';
import 'package:simple_note_taking_app/widgets/text_widget.dart';

class AddNotesPage extends StatelessWidget {
  static const String routeName = '/notes/add';
  const AddNotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const NoteAppbarWidget(
        title: 'Add',
      ),
      body: SafeArea(
        child: Column(
          children: [
            AppTextFormField(
              label: 'Title',
              hint: 'Inter title',
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              label: 'Description',
              hint: 'Inter description',
              padding: const EdgeInsets.symmetric(horizontal: 20),
              maxLines: 4,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: kcBlack,
                  minimumSize: Size(MediaQuery.of(context).size.width - 40, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const TextWidget(
                  'Ad',
                  fontSize: 16,
                  color: kcWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
