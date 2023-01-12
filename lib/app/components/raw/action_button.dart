import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: theme.colorTheme.primaryColor),
        onPressed: onPressed,
        child: Text(
          text,
          style: theme.textTheme.title1(font: 'Lexend Deca'),
        ),
      ),
    );
  }
}
