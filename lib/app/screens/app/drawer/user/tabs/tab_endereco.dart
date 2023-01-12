import 'package:flutter/material.dart';

class TabEndereco extends StatefulWidget {
  const TabEndereco({Key? key}) : super(key: key);

  @override
  State<TabEndereco> createState() => _TabEnderecoState();
}

class _TabEnderecoState extends State<TabEndereco> {


  TextEditingController? cepController;
  TextEditingController? cityController;
  TextEditingController? estadoController;
  TextEditingController? enderecoController;
  TextEditingController? compleController;
  TextEditingController? refController;



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
              controller: cityController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Cidade',
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
              //   fontWeight: FontWeight.w600,
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: estadoController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Estado',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
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
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: cepController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'CEP',
                // labelStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Poppins',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme.of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Poppins',
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
              //   fontWeight: FontWeight.w600,
              // ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: enderecoController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Endereço',
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
                //   fontFamily: 'Poppins',
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
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: compleController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Complemento',
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
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0, 12, 0, 0),
            child: TextFormField(
              controller: refController,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Referência',
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
              //   fontWeight: FontWeight.w600,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
