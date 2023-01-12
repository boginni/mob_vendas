import 'package:flutter/material.dart';

import '../../../../../../application.dart';
import '../../../../app_foundation.dart';
import '../moddels/pedido.dart';
import '../tela_pedido.dart';

class TilePedido extends StatelessWidget {
  const TilePedido({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Application.navigate(
            context,
            TelaPedido(
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Text(
            ''
          ),

        ),
      ),
    );
  }
}
