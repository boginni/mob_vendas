import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/components/raw/action_button.dart';
import 'package:mob_vendas/app/screens/app/main/venda/telas/tela_pedido.dart';

import '../../../../application.dart';
import '../../../../components/raw/icon_tile.dart';
import '../produtos/telas/tela_view_produto.dart';

class TelaVenda extends StatefulWidget {
  const TelaVenda({Key? key}) : super(key: key);

  @override
  State<TelaVenda> createState() => _TelaVendaState();
}

class _TelaVendaState extends State<TelaVenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TileIcon(
              iconData: CupertinoIcons.cube_box,
              title: 'Venda exemplo',
              onPressed: () {
                // Application.navigate(context, TelaViewProduto());
              })
        ],
      ),
      bottomNavigationBar: ActionButton(onPressed: () {

        Application.navigate(context, TelaPedido());

      }, text: 'Nova Venda'),
    );
  }
}
