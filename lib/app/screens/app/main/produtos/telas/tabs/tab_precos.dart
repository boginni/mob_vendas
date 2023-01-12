import 'package:flutter/material.dart';

class TabPrecos extends StatefulWidget {
  const TabPrecos({Key? key}) : super(key: key);

  @override
  State<TabPrecos> createState() => _TabPrecosState();
}

class _TabPrecosState extends State<TabPrecos> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColorLight,
            child: TabBar(
              tabs: [
                Tab(
                  text: 'Produto',
                ),
                Tab(
                  text: 'Tabela',
                ),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TabBarView(
                physics: ClampingScrollPhysics(),
                children: [
                  TabPrecoNormal(),
                  TabPrecoTabela(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabPrecoNormal extends StatefulWidget {
  const TabPrecoNormal({Key? key}) : super(key: key);

  @override
  State<TabPrecoNormal> createState() => _TabPrecoNormalState();
}

class _TabPrecoNormalState extends State<TabPrecoNormal> {
  bool? switchValue1;
  bool? switchValue2;

  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;

  @override
  void initState() {
    super.initState();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preço de custo',
                // style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
                child: Text(
                  'Preço minimo de venda',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: TextFormField(
                    controller: textController3,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'R\$',
                      // labelStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      // hintStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: textController4,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'R\$',
                      // labelStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      // hintStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Preço  normal',
                // style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 130, 0),
                child: Text(
                  'Lucro',
                  // style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: TextFormField(
                    controller: textController5,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'R\$',
                      // labelStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      // hintStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: TextFormField(
                    controller: textController6,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'R\$',
                      // labelStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      // hintStyle:
                      //     FlutterFlowTheme.of(context).bodyText1.override(
                      //           fontFamily: 'Lexend Deca',
                      //           color: Color(0xFF95A1AC),
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    ),
                    // style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Usar desconto',
                // style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Switch(
                value: switchValue1 ??= false,
                onChanged: (newValue) async {
                  setState(() => switchValue1 = newValue!);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Usar brinde',
                // style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Switch(
                value: switchValue2 ??= false,
                onChanged: (newValue) async {
                  setState(() => switchValue2 = newValue!);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TabPrecoTabela extends StatefulWidget {
  const TabPrecoTabela({Key? key}) : super(key: key);

  @override
  State<TabPrecoTabela> createState() => _TabPrecoTabelaState();
}

class _TabPrecoTabelaState extends State<TabPrecoTabela> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
