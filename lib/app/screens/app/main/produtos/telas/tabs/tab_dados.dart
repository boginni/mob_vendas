import 'package:flutter/material.dart';

class TabDados extends StatefulWidget {
  const TabDados({Key? key}) : super(key: key);

  @override
  State<TabDados> createState() => _TabDadosState();
}

class _TabDadosState extends State<TabDados> {



  TextEditingController? nomeProdController;
  TextEditingController? descProdController;

  @override
  void initState() {
    descProdController = TextEditingController();
    nomeProdController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          20, 5, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                10, 12, 0, 0),
            child: Text(
              'Título*',
              // style: FlutterFlowTheme
              //     .of(context)
              //     .subtitle1
              //     .override(
              //   fontFamily: 'Poppins',
              //   fontSize: 15,
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                12, 0, 12, 0),
            child: TextFormField(
              controller: nomeProdController,
              obscureText: false,
              decoration: InputDecoration(
                labelText:
                'Nome e pequena descrição ',
                // labelStyle:
                // FlutterFlowTheme
                //     .of(context)
                //     .bodyText1
                //     .override(
                //   fontFamily: 'Lexend Deca',
                //   color: Color(0xFF95A1AC),
                //   fontWeight: FontWeight.w500,
                // ),
                // hintStyle:
                // FlutterFlowTheme
                //     .of(context)
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
                    15, 15, 15, 15),
              ),
              // style: FlutterFlowTheme
              //     .of(context)
              //     .bodyText1,
              maxLines: 2,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                10, 15, 0, 0),
            child: Text(
              'Unidade de medida do produto*',
              // style: FlutterFlowTheme
              //     .of(context)
              //     .bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                12, 12, 12, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                // FlutterFlowDropDown<String>(
                //   options: ['Kg', 'Cm'],
                //   onChanged: (val) =>
                //       setState(
                //               () => dropDownValue1 = val),
                //   width: 160,
                //   height: 50,
                //   textStyle:
                //   FlutterFlowTheme
                //       .of(context)
                //       .bodyText1
                //       .override(
                //     fontFamily: 'Poppins',
                //     color: Colors.black,
                //   ),
                //   fillColor:
                //   FlutterFlowTheme
                //       .of(context)
                //       .primaryBtnText,
                //   elevation: 2,
                //   borderColor: Colors.transparent,
                //   borderWidth: 0,
                //   borderRadius: 0,
                //   margin:
                //   EdgeInsetsDirectional.fromSTEB(
                //       12, 4, 12, 4),
                //   hidesUnderline: true,
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                10, 15, 0, 0),
            child: Text(
              'Grupos *',
              // style: FlutterFlowTheme
              //     .of(context)
              //     .bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                10, 15, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                // FlutterFlowDropDown<String>(
                //   options: [
                //     'Option 1',
                //     'Option 2',
                //     'Option 3'
                //   ],
                //   onChanged: (val) =>
                //       setState(
                //               () => dropDownValue2 = val),
                //   width: 160,
                //   height: 50,
                //   textStyle:
                //   FlutterFlowTheme
                //       .of(context)
                //       .bodyText1
                //       .override(
                //     fontFamily: 'Poppins',
                //     color: Colors.black,
                //   ),
                //   hintText: 'Grupo',
                //   fillColor:
                //   FlutterFlowTheme
                //       .of(context)
                //       .primaryBtnText,
                //   elevation: 2,
                //   borderColor: Colors.transparent,
                //   borderWidth: 0,
                //   borderRadius: 0,
                //   margin:
                //   EdgeInsetsDirectional.fromSTEB(
                //       12, 4, 12, 4),
                //   hidesUnderline: true,
                // ),
                // FlutterFlowDropDown<String>(
                //   options: [
                //     'Option 1',
                //     'option 2',
                //     'Option 3'
                //   ],
                //   onChanged: (val) =>
                //       setState(
                //               () => dropDownValue3 = val),
                //   width: 160,
                //   height: 50,
                //   textStyle:
                //   FlutterFlowTheme
                //       .of(context)
                //       .bodyText1
                //       .override(
                //     fontFamily: 'Poppins',
                //     color: Colors.black,
                //   ),
                //   hintText: 'Sub Grupo',
                //   fillColor: Colors.white,
                //   elevation: 2,
                //   borderColor: Colors.transparent,
                //   borderWidth: 0,
                //   borderRadius: 0,
                //   margin:
                //   EdgeInsetsDirectional.fromSTEB(
                //       12, 4, 12, 4),
                //   hidesUnderline: true,
                // ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                10, 15, 0, 0),
            child: Text(
              'Descrição completa*',
              // style: FlutterFlowTheme
              //     .of(context)
              //     .bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                12, 12, 12, 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment:
              MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: descProdController,
                    obscureText: false,
                    decoration: InputDecoration(
                      // labelStyle: FlutterFlowTheme
                      //     .of(
                      //     context)
                      //     .bodyText1
                      //     .override(
                      //   fontFamily: 'Lexend Deca',
                      //   color: Color(0xFF95A1AC),
                      //   fontWeight:
                      //   FontWeight.w500,
                      // ),
                      // hintStyle: FlutterFlowTheme
                      //     .of(
                      //     context)
                      //     .bodyText1
                      //     .override(
                      //   fontFamily: 'Lexend Deca',
                      //   color: Color(0xFF95A1AC),
                      //   fontWeight:
                      //   FontWeight.w500,
                      // ),
                      enabledBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius:
                        BorderRadius.circular(8),
                      ),
                      focusedBorder:
                      OutlineInputBorder(
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
                      EdgeInsetsDirectional
                          .fromSTEB(
                          10, 10, 10, 10),
                    ),
                    // style:
                    // FlutterFlowTheme
                    //     .of(context)
                    //     .bodyText1,
                    maxLines: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
