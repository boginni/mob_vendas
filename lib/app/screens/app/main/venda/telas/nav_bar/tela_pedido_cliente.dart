import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../app_foundation.dart';
import '../moddels/pedido.dart';

class TelaPedidoCliente extends StatefulWidget {
  const TelaPedidoCliente({Key? key}) : super(key: key);


  @override
  State<TelaPedidoCliente> createState() => _TelaPedidoClienteState();
}

class _TelaPedidoClienteState extends State<TelaPedidoCliente> {
  bool onLoading = true;

  @override
  void initState() {
    super.initState();
    // if (widget.pedido.idCliente != null) {
    //   Cliente.getCliente(widget.pedido.idCliente!).then((value) {
    //     setState(() {
    //       curCliente = value;
    //       onLoading = false;
    //     });
    //   });
    // }
  }

  // Cliente? curCliente;

  bool mostrarTodos = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {

                  },
                  child: const Text('Selecionar Cliente'),
                ),
                Switch(
                  value: mostrarTodos,
                  onChanged: (value) {
                    setState(() {
                      mostrarTodos = value;
                    });
                  },
                ),
                Builder(
                  builder: (context) {

                    return ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: [
                        // Text(cliente.nome ?? ''),
                        TextButton(
                          child: Text('Títulos'),
                          onPressed: () {

                          },
                        ),
                        TextButton(
                          child: Text('Comodatos'),
                          onPressed: () {
                            // Application.navigate(context,
                            //     TelaComodato(idPessoaSync: cliente.idSync));
                          },
                        ),
                        TextButton(
                          child: Text('Histórico de pedidos'),
                          onPressed: () {
                            // Application.navigate(
                            //   context,
                            //   TelaHistoricoPedidos(idPessoa: cliente.idSync, idVisita: null,),
                            // );
                          },
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          );
  }
}
