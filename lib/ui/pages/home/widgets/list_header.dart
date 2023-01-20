import 'package:bloc_template/utils/buildcontext_extensions.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String text;

  const ListHeader(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8, left: 16, right: 16),
      child: Text(text, style: context.theme.textTheme.headline3),
    );
  }
}
