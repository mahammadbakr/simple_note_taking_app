import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_note_taking_app/core/gen/assets.gen.dart';
import 'package:simple_note_taking_app/features/noting/widgets/text_widget.dart';
import '../../../../../core/theme/theme.dart';

// custom appbar for home page
class NoteAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const NoteAppbarWidget({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kcWhite,
      surfaceTintColor: kcWhite,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.icons.note,
            height: 25,
          ),
          const SizedBox(
            width: 6,
          ),
          const TextWidget(
            'Simple notes',
            enableLang: false,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      // ),
      elevation: 0,
      shadowColor: kcGrey.withOpacity(0.3),
      scrolledUnderElevation: 0,
    );
  }
}
