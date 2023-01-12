import 'package:flutter/material.dart';

class TabContato extends StatefulWidget {
  const TabContato({Key? key}) : super(key: key);

  @override
  State<TabContato> createState() => _TabContatoState();
}

class _TabContatoState extends State<TabContato> {


  TextEditingController? telefoneController;
  TextEditingController? textController7;
  TextEditingController? textController8;


  @override
  void initState() {
    telefoneController = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          20, 0, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0, 12, 0, 0),
              child: TextFormField(
                controller: telefoneController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Telefone',
                  // labelStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  //   fontWeight:
                  //   FontWeight.w500,
                  // ),
                  // hintStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedErrorBorder:
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding:
                  EdgeInsetsDirectional.fromSTEB(
                      20, 20, 20, 20),
                ),
                // style: FlutterFlowTheme.of(context)
                //     .subtitle2
                //     .override(
                //   fontFamily: 'Poppins',
                //   color: Color(0xFF0F1113),
                // ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0, 12, 0, 0),
              child: TextFormField(
                controller: textController7,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email',
                  // labelStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  //   fontWeight:
                  //   FontWeight.w500,
                  // ),
                  // hintStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  //   fontWeight:
                  //   FontWeight.w500,
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedErrorBorder:
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding:
                  EdgeInsetsDirectional.fromSTEB(
                      20, 20, 20, 20),
                ),
                // style: FlutterFlowTheme.of(context)
                //     .subtitle2
                //     .override(
                //   fontFamily: 'Poppins',
                //   color: Color(0xFF0F1113),
                // ),
                keyboardType:
                TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0, 12, 0, 0),
              child: TextFormField(
                controller: textController8,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Rede social',
                  // labelStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  //   fontWeight:
                  //   FontWeight.w500,
                  // ),
                  // hintStyle:
                  // FlutterFlowTheme.of(context)
                  //     .bodyText1
                  //     .override(
                  //   fontFamily: 'Lexend Deca',
                  //   color: Color(0xFF95A1AC),
                  //   fontWeight:
                  //   FontWeight.w500,
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  focusedErrorBorder:
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius:
                    BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding:
                  EdgeInsetsDirectional.fromSTEB(
                      20, 20, 20, 20),
                ),
                // style: FlutterFlowTheme.of(context)
                //     .subtitle2
                //     .override(
                //   fontFamily: 'Poppins',
                //   color: Color(0xFF0F1113),
                // ),
                keyboardType: TextInputType.url,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
