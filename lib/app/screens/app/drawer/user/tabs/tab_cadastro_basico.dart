import 'package:flutter/material.dart';

class TabCadastroBasico extends StatefulWidget {
  const TabCadastroBasico({Key? key}) : super(key: key);

  @override
  State<TabCadastroBasico> createState() => _TabCadastroBasicoState();
}

class _TabCadastroBasicoState extends State<TabCadastroBasico> {

  TextEditingController? apelidoController;
  TextEditingController? nomeController;
  TextEditingController? cpfController;
  TextEditingController? rgController;
  TextEditingController? nascController;


  @override
  void initState() {

    apelidoController = TextEditingController();
    nomeController = TextEditingController();
    cpfController = TextEditingController();
    rgController = TextEditingController();
    nascController = TextEditingController();


  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          20, 0, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: nomeController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Nome completo',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
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
              //   fontWeight: FontWeight.w500,
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: apelidoController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Apelido',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
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
              //   fontWeight: FontWeight.w500,
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: cpfController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'CPF/CNPJ',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
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
              //   fontWeight: FontWeight.w500,
              // ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: rgController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Rg/Incrição estadual',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
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
              //   fontWeight: FontWeight.w500,
              // ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: nascController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Data de nascimento',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
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
              //   fontWeight: FontWeight.w500,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
