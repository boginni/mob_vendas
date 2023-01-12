import 'package:flutter/material.dart';

import 'moddels/pedido_item.dart';

class TelaPedidoItem extends StatefulWidget {
  const TelaPedidoItem({Key? key}) : super(key: key);


  @override
  State<TelaPedidoItem> createState() => _TelaPedidoItemState();
}

class _TelaPedidoItemState extends State<TelaPedidoItem> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: ListView(),
    );
  }


}

