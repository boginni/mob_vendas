import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/screens/auth/login/components/email_field.dart';
import 'package:mob_vendas/app/screens/auth/login/components/password_field.dart';

import '../../../../../api/application/app_theme.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  State<LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {

  late TextEditingController controllerEmail;
  late TextEditingController controllerPassword;

  late bool senhaLoginVisibility;

  @override
  void initState() {
    super.initState();
    senhaLoginVisibility = false;
    controllerEmail = TextEditingController();
    controllerPassword = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
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
              padding:
              EdgeInsetsDirectional.fromSTEB(
                  0, 20, 0, 0),
              child: EmailField(controller: controllerEmail),
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(
                  0, 12, 0, 0),
              child: PasswordField(controller: controllerPassword),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () async {
                  final url = 'https://github.com/flutter/gallery/';
                  // if (await canLaunch(url)) {
                  //   await launch(
                  //     url,
                  //     forceSafariVC: false,
                  //   );
                  // }


                  print('rezet password');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: Text(
                    'forgot password?',
                    style: theme.textTheme.body(font: 'Poppins', color: theme.colorTheme.secondaryColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(top: 24),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: theme.colorTheme.primaryColor),
                  onPressed: () async {

                    String? cause;

                    try {
                      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: controllerEmail.text,
                        password: controllerPassword.text,
                      );

                      Application.login(context, userCredential.user!);

                    } on FirebaseAuthException catch (e) {
                      cause = e.message;
                      if (e.code == 'user-not-found') {
                        cause = 'Não existe usário para esse email';
                      } else if (e.code == 'wrong-password') {
                        cause = 'senha incorreta';
                      }
                    }

                    setState(() {
                      error = cause;
                    });

                  },
                  child: Text(
                    'Entrar', style: theme.textTheme.title1(font: 'Lexend Deca'),
                  ),
                ),
              ),
            ),
            if(error != null)
            Text(
              error!, style: theme.textTheme.title1(font: 'Lexend Deca', color: Colors.redAccent),
            ),
            Text(
                'ou faça login usando',
                style: theme.textTheme.subTitle2(font: 'Poppins')
            ),
            Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(
                  15, 16, 15, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFDB4A39),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:
                          Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment:
                    AlignmentDirectional(
                        0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      // color:
                      // FlutterFlowTheme.of(
                      //     context)
                      //     .primaryBtnText,
                      size: 24,
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
                          color:
                          Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment:
                    AlignmentDirectional(
                        0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      // color:
                      // FlutterFlowTheme.of(
                      //     context)
                      //     .primaryBtnText,
                      size: 24,
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
                          color:
                          Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment:
                    AlignmentDirectional(
                        0, 0),
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      // color:
                      // FlutterFlowTheme.of(
                      //     context)
                      //     .primaryBtnText,
                      size: 24,
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
