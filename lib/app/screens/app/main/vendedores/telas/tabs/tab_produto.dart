import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:provider/provider.dart';

import '../../../../../../application.dart';
import '../../../../../../components/raw/icon_tile.dart';
import '../../../produtos/moddels/produto.dart';
import '../../../produtos/telas/tela_view_produto.dart';

class TabProduto extends StatefulWidget {
  const TabProduto({Key? key}) : super(key: key);

  @override
  State<TabProduto> createState() => _TabProdutoState();
}

class _TabProdutoState extends State<TabProduto> {
  late final QueryDocumentSnapshot<Map<String, dynamic>> doc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      doc = context.read<QueryDocumentSnapshot<Map<String, dynamic>>>();
      getData();
    });
  }

  List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = [];

  Future<void> getData() async {

    Produto.getData(id: doc.get('id')).then((value) {
      setState(() {
        docs = value.docs;
        onLoading = false;
      });
    });

  }

  bool onLoading = true;

  @override
  Widget build(BuildContext context) {
    return onLoading
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
                    Application.navigate(context, TelaViewProduto());
                  },
                );
              },
            ),
          );
  }
}
