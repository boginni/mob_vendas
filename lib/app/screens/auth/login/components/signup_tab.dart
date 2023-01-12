import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/screens/auth/login/components/password_field.dart';

import '../../../../../api/application/app_theme.dart';
import 'email_field.dart';

class SignupTab extends StatefulWidget {
  const SignupTab({Key? key}) : super(key: key);

  @override
  State<SignupTab> createState() => _SignupTabState();
}

class _SignupTabState extends State<SignupTab> {
  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;
  late TextEditingController controllerPasswordRepeat;

  @override
  void initState() {
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
    controllerPasswordRepeat = TextEditingController();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerPasswordRepeat.dispose();
  }

  String? error;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: EmailField(controller: controllerEmail),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: PasswordField(
                controller: controllerPassword,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: PasswordField(
                  controller: controllerPasswordRepeat, label: 'Repetir Senha'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: theme.colorTheme.primaryColor),
                  onPressed: () async {
                    String? cause;

                    try {
                      if (controllerPassword.text !=
                          controllerPasswordRepeat.text) {
                        throw Exception('As senhas não batem');
                      }

                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                        email: controllerEmail.text,
                        password: controllerPassword.text,
                      );

                      User user = userCredential.user!;

                      FirebaseFirestore.instance
                          .collection('users')
                          .add({'nome': user.displayName, 'id': user.uid}).then(
                        (value) {
                          Application.login(context, userCredential.user!);
                        },
                      );
                    } on FirebaseAuthException catch (e) {
                      cause = e.message;
                      if (e.code == 'weak-password') {
                        cause = 'A senha é muito fraca';
                      } else if (e.code == 'email-already-in-use') {
                        cause = 'Já Existe uma conta com esse usário';
                      } else {
                        print(e);
                      }
                    } catch (e) {
                      cause = e.toString();
                    }

                    setState(() {
                      error = cause;
                    });
                  },
                  child: Text(
                    'Cadastrar',
                    style: theme.textTheme.title1(font: 'Lexend Deca'),
                  ),
                ),
              ),
            ),
            if (error != null)
              Text(
                error!,
                style: theme.textTheme
                    .body(font: 'Lexend Deca', color: Colors.red),
              ),
            Text('Ou cadastre-se usando',
                style: theme.textTheme.subTitle2(font: 'Poppins')),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 16, 15, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB4A39),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        // color:
                        // FlutterFlowTheme.of(
                        //     context)
                        //     .primaryBtnText,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF3B5998),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        // color:
                        // FlutterFlowTheme.of(
                        //     context)
                        //     .primaryBtnText,
                        size: 24,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF00ACEE),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        // color:
                        // FlutterFlowTheme.of(
                        //     context)
                        //     .primaryBtnText,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
