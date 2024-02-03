import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_note_taking_app/core/gen/assets.gen.dart';
import 'package:simple_note_taking_app/widgets/text_widget.dart';
import 'package:simple_note_taking_app/pages.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.pushNamed(
        context, AddNotesPage.routeName);
      },
      child: Row(
              children: [
                const TextWidget(
                  'Add',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  width: 6,
                ),
                SvgPicture.asset(
                  Assets.icons.add,
                  width: 30,
                ),
              ],
            ),
    );
  }
}