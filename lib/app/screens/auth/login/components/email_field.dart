import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';

class EmailField extends StatelessWidget {
  const EmailField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return TextFormField(
      controller: controller,
      obscureText: false,
      style: AppTheme.of(context).textTheme.subTitle3(font: 'Poppins'),
      // maxLines: null,
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: theme.textTheme.body(font: 'Lexend Deca'),
        hintStyle: theme.textTheme.body(font: 'Poppins'),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x00000000),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
      ),
    );
  }
}
