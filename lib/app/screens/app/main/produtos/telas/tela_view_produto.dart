import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tela_edit_produto.dart';

import '../../../../../../api/application/app_theme.dart';

class TelaViewProduto extends StatefulWidget {
  const TelaViewProduto({Key? key}) : super(key: key);

  @override
  _TelaViewProdutoState createState() => _TelaViewProdutoState();
}

class _TelaViewProdutoState extends State<TelaViewProduto> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  bool onLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadData();
    });
  }

  loadData() async {
    if (!onLoading) {
      setState(() {
        onLoading = true;
      });
    }

    await Future.delayed(Duration(seconds: 1));

    setState(() {
      onLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 25, 0),
          // child: Text(
          //   '',
          // ),
        ),
        actions: [
          // IconButton(onPressed: (){}, icon: Icon(Icons.search), ),
          //
          // IconButton(
          //   onPressed: () {
          //     Application.navigate(context, TelaEditProduto()).then((value) {
          //       loadData();
          //     });
          //   },
          //   icon: Icon(Icons.edit),
          // ),

          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(0, 10, 20, 0),
          //   child: Badge(
          //     badgeContent: Text(
          //       '1',
          //     ),
          //     showBadge: true,
          //     shape: BadgeShape.circle,
          //     // badgeColor: FlutterFlowTheme.of(context).primaryColor,
          //     elevation: 4,
          //     padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          //     position: BadgePosition.topEnd(),
          //     animationType: BadgeAnimationType.scale,
          //     toAnimate: true,
          //     child: Padding(
          //       padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
          //       child: IconButton(
          //         // borderColor: Colors.transparent,
          //         // borderRadius: 30,
          //         // buttonSize: 40,
          //         icon: Icon(
          //           Icons.shopping_cart_outlined,
          //           // color: FlutterFlowTheme.of(context).primaryText,
          //           size: 28,
          //         ),
          //         onPressed: () {
          //           print('IconButton pressed ...');
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: onLoading
            ? ContainerLoading()
            : ListView(
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      // borderRadius: BorderRadius.only(
                      //   bottomLeft: Radius.circular(0),
                      //   bottomRight: Radius.circular(0),
                      //   topLeft: Radius.circular(16),
                      //   topRight: Radius.circular(0),
                      // ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: DefaultTabController(
                            length: 2,
                            child: TabBarView(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://ae01.alicdn.com/kf/H5405bfa8ed164bd59e17fe3b4edefa738/Dewalt-furadeira-de-impacto-original-chave-de-fenda-ferramentas-el-tricas-chave-de-fenda-martelo-de.jpg_Q90.jpg_.webp',
                                  width: double.infinity,
                                  height: 270,
                                  fit: BoxFit.cover,
                                ),
                                CachedNetworkImage(
                                  imageUrl:
                                      'https://www.dutramaquinas.com.br/view/img/produtos/alta/262533_furadeira_parafusadeira_de_impacto_1_2_a_bateria_18v_com_kit_23_acessorios_gsb_180_li.webp',
                                  width: double.infinity,
                                  height: 270,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              child: IconButton(
                                // borderColor: Colors.transparent,
                                // borderRadius: 30,
                                // buttonSize: 40,
                                iconSize: 42,
                                icon: Icon(
                                  CupertinoIcons.cube_box,
                                  // color: FlutterFlowTheme.of(context)
                                  //     .secondaryText,
                                  // size: 32,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'R\$',
                                  style: theme.textTheme.body(
                                      font: 'Poppins',
                                      color: Color(0xFF0F1113)),
                                ),
                                Text(
                                  '905,37',
                                  style: theme.textTheme.title1(
                                      font: 'Poppins',
                                      color: Color(0xFF0F1113)),
                                ),
                              ],
                            ),
                            Text(
                              '8 pedidos',
                              style: theme.textTheme.body(font: 'Poppins'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Furadeira E Parafusadeira sem fio 21v com led it-blue Duas Baterias',
                            style: theme.textTheme.body(font: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ExpandableNotifier(
                              initialExpanded: true,
                              child: ExpandablePanel(
                                header: Text('Tabelas de Preço',
                                    style: theme.textTheme.title3()),
                                expanded: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Atacado: R\$ 222,54',
                                        // style: FlutterFlowTheme.of(context)
                                        //     .bodyText1
                                        //     .override(
                                        //   fontFamily: 'Poppins',
                                        //   fontSize: 14,
                                        //   fontWeight: FontWeight.w500,
                                        // ),
                                      ),
                                      Text('Varejo: R\$ 222,54'),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                ),
                                collapsed: Container(),
                              ),
                            ),
                            ExpandableNotifier(
                              initialExpanded: true,
                              child: ExpandablePanel(
                                header: Text(
                                  'Detalhes',
                                  style: theme.textTheme.title3(),
                                ),
                                expanded: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text('Grupo'),
                                      Text(''),
                                      Text('Subgrupo'),
                                      Text(''),
                                    ],
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.chevron_right_rounded,
                                  collapseIcon:
                                      Icons.keyboard_arrow_down_rounded,
                                ),
                                collapsed: Container(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                              child: ExpandableNotifier(
                                initialExpanded: true,
                                child: ExpandablePanel(
                                  header: Text('Descrição',
                                      style: theme.textTheme.title3()),
                                  expanded: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                            'A parafusadeira e furadeira elétrica IT Blue é uma ferramenta com tecnologia de ponta e características únicas como iluminação por LED e freio e-clutch inteligente que permite parar a rotação em forma instantânea. Possui ajuste múltiplo de torque e dupla velocidade, ideal para furos com acabamento perfeito!\n\nO motor com tecnologia Made In Japan possibilita um alto torque e velocidade constante, tanto no modo furadeira como no modo parafusadeira.\n\nO mandril confeccionado em aço e ABS de alto impacto, permite instalar brocas até 10mm de diâmetro com ajuste perfeito.\n\nCom sistema de iluminação LED, é ideal para aqueles locais de difícil visualização, permitindo assim trabalhar até mesmo na escuridão, acionado pelo gatilho multi-velocidade, ele está sempre pronto!\n\nCom bateria recarregável de litio-ion de alta capacidade, permite um melhor torque na hora do acionamento.\n\n\n\nInformações complementares:\n\n- Madril sem chave\n- Funções de avanço, reverso e bloqueio com velocidade alta/baixa e 18 configurações\n- Alimentado por Bateria de lítio-íon de 21V\n- Luz de trabalho LED integrada e indicador LED de nível de bateria\n- Capacidade de perfuração; madeira de 20mm e metal de 10mm\n- Acompanha maleta para transporte e carregador para a bateria da parafusadeira.\n\n\n\nCaracterísticas Técnicas:\n\n- Mandril de aço inox de aperto rápido, capacidade máxima de 10mm\n-Sistema de rotação reversível\n- Torque ajustável de 18 posições\n- Sistema e-clutch de freio\n- Vedação resistente a água, pode ser utilizada na chuva\n- Regulador eletrônico de velocidade\n- Gatilho de acionamento com múltiplas velocidades\n- Motor de alto torque, 38nm em alta velocidade\n- 02 peças Bateria recarregável litio-ion 21V\n- Grande Autonomia\n- Duas velocidades modo furadeira: 1350rpm modo parafusadeira: 350rpm\n- Carregador Bivolt inteligente',
                                            style: theme.textTheme
                                                .body(font: 'Poppins')),
                                      ],
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    expandIcon: Icons.chevron_right_rounded,
                                    collapseIcon:
                                        Icons.keyboard_arrow_down_rounded,
                                  ),
                                  collapsed: Container(),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ),
      // bottomNavigationBar: Material(
      //   color: Colors.transparent,
      //   elevation: 3,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(0),
      //   ),
      //   child: Container(
      //     width: double.infinity,
      //     height: 60,
      //     decoration: BoxDecoration(
      //       // color: FlutterFlowTheme.of(context).secondaryBackground,
      //       boxShadow: [
      //         BoxShadow(
      //           blurRadius: 4,
      //           color: Color(0x320F1113),
      //           offset: Offset(0, -2),
      //         )
      //       ],
      //       borderRadius: BorderRadius.circular(0),
      //     ),
      //     child: Padding(
      //       padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
      //       child: Row(
      //         mainAxisSize: MainAxisSize.max,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Align(
      //             alignment: AlignmentDirectional(0, 0),
      //             child: Padding(
      //               padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
      //               child: IconButton(
      //                 // borderColor: Colors.transparent,
      //                 // borderRadius: 10,
      //                 // borderWidth: 1,
      //                 // buttonSize: 60,
      //                 icon: Icon(
      //                   Icons.store,
      //                   // color: FlutterFlowTheme.of(context).primaryText,
      //                   size: 25,
      //                 ),
      //                 onPressed: () {
      //                   print('IconButton pressed ...');
      //                 },
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
      //             child: TextButton(
      //               onPressed: () {
      //                 print('Button pressed ...');
      //               },
      //               child: Text('Adicionar ao carrinho'),
      //               // text: 'Adicionar ao carrinho',
      //
      //               // options: FFButtonOptions(
      //               //   padding: EdgeInsetsDirectional.fromSTEB(
      //               //       10, 10, 10, 10),
      //               //   color: Color(0xC839ABEF),FlowTheme.of(context)
      //               //   //     .subtitle2
      //               //   //     .override(
      //               //   //   fontFamily: 'Poppins',
      //               //   //   color: Color(0xFF0F1113),
      //               //   //   fontSize: 17,
      //               //   //   fontWeight: FontWeight.w500,
      //               //   // ),
      //               //   // textStyle: Flutter
      //               //   borderSide: BorderSide(
      //               //     color: Colors.transparent,
      //               //     width: 1,
      //               //   ),
      //               //   borderRadius: BorderRadius.circular(8),
      //               // ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
