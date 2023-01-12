import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_bar/tela_pedido_cliente.dart';
import 'nav_bar/tela_pedido_produtos.dart';
import 'nav_bar/tela_pedido_totais.dart';

class TelaPedido extends StatefulWidget {
  const TelaPedido({Key? key, this.init = false}) : super(key: key);

  final bool init;

  @override
  State<TelaPedido> createState() => _TelaPedidoState();
}

class _TelaPedidoState extends State<TelaPedido> {
  @override
  void initState() {
    // widget.pedido.loadItens().then((value) {
    //   setState(() {
    //     telaAtual = 0;
    //     onLoading = false;
    //   });
    // });

    onLoading = false;
  }

  bool onLoading = true;

  late int telaAtual = 0;

  @override
  Widget build(BuildContext context) {
    final telas = <Widget>[
      TelaPedidoCliente(),
      TelaPedidoProduto(),
      const TelaPedidoTotais(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Pedido')),
      body: telas[telaAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            telaAtual = value;
          });
        },
        currentIndex: telaAtual,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cliente',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cube_box),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Totais',
          ),
        ],
      ),
    );
  }
}
