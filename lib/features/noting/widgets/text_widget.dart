import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';

import '../../../core/language/language_bloc.dart';
import '../../../core/theme/theme.dart';

TextStyle textStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight = FontWeight.w500,
  TextDecoration? decoration,
  TextAlign? textAlign,
  int? maxLines,
  double? height,
}) {
  return TextStyle(
    color: color ?? kcBlack,
    fontWeight: fontWeight,
    decoration: decoration,
    fontSize: fontSize,
    fontFamily: 'futura',
    height: height,
  );
}

String textLang(ku, en, ar, tr) {
  switch (languageCode) {
    case LanguageCode.ku:
      return ku;
    case LanguageCode.en:
      return en;
    case LanguageCode.ar:
      return ar;
    case LanguageCode.tr:
      return tr;
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool enableLang;
  final bool enableAutoSize;
  final double? height;
  const TextWidget(
    this.text, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.enableLang = true,
    this.enableAutoSize = false,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = textStyle(
      color: color ?? kcBlack,
      fontSize: fontSize,
      decoration: decoration,
      fontWeight: fontWeight,
      textAlign: textAlign,
      height: height,
    );

    if (enableAutoSize) {
      return AutoSizeText(
        enableLang ? lang(text) : text,
        maxLines: maxLines,
        overflow: maxLines == null ? null : TextOverflow.ellipsis,
        style: style,
        textAlign: textAlign,
      );
    }
    return Text(
      enableLang ? lang(text) : text,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: style,
      textAlign: textAlign,
    );
  }
}

class TextLangWidget extends StatelessWidget {
  final String textKu;
  final String textEn;
  final String textAr;
  final String textTr;

  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;
  const TextLangWidget(
    this.textKu,
    this.textEn,
    this.textAr,
    this.textTr, {
    Key? key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.decoration,
    this.maxLines,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textLang(textKu, textEn, textAr, textTr),
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: textStyle(
        color: color ?? kcBlack,
        fontSize: fontSize,
        decoration: decoration,
        fontWeight: fontWeight,
        textAlign: textAlign,
        height: height,
      ),
      textAlign: textAlign,
    );
  }
}
