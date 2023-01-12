import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/api/application/app_user.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/components/raw/bottom_sheet_edit_control.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/moddels/produto.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tela_edit_produto.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tela_edit_produto_new.dart';

import '../../../../components/raw/icon_tile.dart';

class TelaProduto extends StatefulWidget {
  const TelaProduto({Key? key}) : super(key: key);

  @override
  State<TelaProduto> createState() => _TelaProdutoState();
}

class _TelaProdutoState extends State<TelaProduto> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      getData();
    });
  }

  List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = [];

  Future<void> getData() async {
    Produto.getData(id: AppUser.of(context).getID()).then((value) {
      setState(() {
        docs = value.docs;
        onLoading = false;
      });
    });
  }

  bool onLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Produtos: '),
                  Text(
                    docs.length.toString(),
                    style: AppTheme.of(context).textTheme.subTitle2(),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    Application.navigate(context, TelaEditProdutoNew()).then(
                          (value) {
                        if (value ?? false) {
                          getData();
                        }
                      },
                    );
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
      body: onLoading
          ? ContainerLoading()
          : RefreshIndicator(
              onRefresh: getData,
              child: ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  final item = docs[index];
                  return TileIcon(
                    iconData: CupertinoIcons.cube_box,
                    title: item['nome'],
                    onPressed: () {
                      Application.navigate(
                        context,
                        TelaEditProdutoNew(item: item,),
                      );
                    },
                  );
                },
              ),
            ),
    );
  }
}
