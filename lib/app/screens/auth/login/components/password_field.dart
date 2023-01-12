import 'package:flutter/material.dart';

import '../../../../../api/application/app_theme.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller,  this.label = 'senha'}) : super(key: key);

  final String label;
  final TextEditingController controller;


  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

  late bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {

    final theme = AppTheme.of(context);

    return TextFormField(
      controller: widget.controller,
      obscureText: !passwordVisibility,
      style: theme.textTheme.subTitle3(font: 'Poppins'),
      // maxLines: null,
      decoration: InputDecoration(
        labelText: widget.label,
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
        suffixIcon: InkWell(
          onTap: () => setState(
            () => passwordVisibility = !passwordVisibility,
          ),
          focusNode: FocusNode(skipTraversal: true),
          child: Icon(
            passwordVisibility
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Color(0xFF95A1AC),
            size: 20,
          ),
        ),
      ),
    );
  }
}
