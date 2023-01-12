import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../moddels/pedido.dart';
import '../tiles/tile_pedido_item.dart';

class TelaPedidoProduto extends StatefulWidget {
  const TelaPedidoProduto({Key? key}) : super(key: key);


  @override
  State<TelaPedidoProduto> createState() => _TelaPedidoProdutoState();
}

class _TelaPedidoProdutoState extends State<TelaPedidoProduto> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        TextButton(
            onPressed: () {

            },
            child: Text('Adicionar')),
        // ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: widget.pedido.itens.length,
        //   itemBuilder: (context, index) {
        //     return TilePedidoitem(item: widget.pedido.itens[index]);
        //   },
        // ),
      ],
    );
  }
}
