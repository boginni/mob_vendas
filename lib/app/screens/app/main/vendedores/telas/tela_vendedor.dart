import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/api/application/app_user.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_user_profile.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_user_profile_backgroud.dart';
import 'package:mob_vendas/app/screens/app/main/vendedores/telas/tabs/tab_informacao_basica.dart';
import 'package:mob_vendas/app/screens/app/main/vendedores/telas/tabs/tab_produto.dart';
import 'package:provider/provider.dart';

class TelaVendedor extends StatefulWidget {
  const TelaVendedor({Key? key, required this.doc}) : super(key: key);

  final QueryDocumentSnapshot<Map<String, dynamic>> doc;

  @override
  _TelaVendedorState createState() => _TelaVendedorState();
}

class _TelaVendedorState extends State<TelaVendedor> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //   setState(() {
    //     onLoading = false;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    final user = AppUser.of(context).user;

    final theme = AppTheme.of(context);

    final headingStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).primaryColor);

    final data = widget.doc.data();

    return Provider<QueryDocumentSnapshot<Map<String, dynamic>>>(
      create: (BuildContext context) {
        return widget.doc;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ContainerUserProfileBackgroud(
              child: ContainerUserProfile(
                // onProfilePressed: data['id'],
                profileUrl: data['photo_url'],
                displayName: data['nome'],
              ),
            ),
            Flexible(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      labelStyle: AppTheme.of(context).textTheme.body(
                            font: 'Lexend Deca',
                          ),
                      tabs: [
                        Tab(text: 'Inf. Básica'),
                        Tab(text: 'Produtos'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        TabInformacaoBasica(),
                        TabProduto(),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
