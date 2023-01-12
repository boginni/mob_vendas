import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tabs/tab_dados.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tabs/tab_fotos.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tabs/tab_precos.dart';
import 'package:provider/provider.dart';

import '../../../../../components/raw/bottom_sheet_edit_control.dart';
import '../moddels/produto.dart';

class TelaEditProdutoNew extends StatefulWidget {
  const TelaEditProdutoNew({Key? key, this.item}) : super(key: key);

  final QueryDocumentSnapshot<Map<String, dynamic>>? item;

  @override
  _TelaEditProdutoNewState createState() => _TelaEditProdutoNewState();
}

class _TelaEditProdutoNewState extends State<TelaEditProdutoNew> {
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;

  late Produto produto;

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool onLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (widget.item != null) {
        produto = Produto.parse(widget.item!.reference);
      } else {
        produto = await Produto.create(context);
      }

      setState(() {
        onLoading = false;
      });

    });
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomSheet: BottomSheetEditControl(),
        key: scaffoldKey,
        // backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          // backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          title: Text(
            'Cadastro de produtos',
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
          bottom: TabBar(
            // labelColor:
            // FlutterFlowTheme.of(context).backgroundComponents,
            // labelStyle: FlutterFlowTheme.of(context).bodyText1,
            // indicatorColor:
            // FlutterFlowTheme.of(context).primaryColor,
            tabs: [
              Tab(
                text: 'Dados',
              ),
              Tab(
                text: 'Fotos',
              ),
              Tab(
                text: 'Prec',
              ),
              Tab(
                text: 'Opç',
              ),
            ],
          ),
        ),
        body: onLoading
            ? ContainerLoading()
            : Provider(
                create: (BuildContext context) {
                  return produto;
                },
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_unfocusNode),
                  child: TabBarView(
                    children: [
                      TabDados(),
                      TabFotos(),
                      TabPrecos(),
                      Container(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
