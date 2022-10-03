import 'package:awesome_rich_text/src/parsers/parsers.dart';
import 'package:flutter/material.dart';

class AwesomeRichText extends RichText {
  AwesomeRichText(
    this.content, {
    Key? key,
    this.style,
    int? maxLines,
    TextOverflow overflow = TextOverflow.clip,
    TextAlign textAlign = TextAlign.start,
  }) : super(
          key: key,
          text: _build(
            content,
            style: style,
          ),
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
        );

  final String content;
  final TextStyle? style;

  static InlineSpan _build(
    String content, {
    TextStyle? style,
  }) {
    final parser = parsers.text(content, style);

    return TextSpan(
      style: style,
      children: parser.parse(),
    );
  }
}
