import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/screens/app/main/outros/moddels/tela.dart';

import 'tiles/tela_tile.dart';

class TelaOutros extends StatefulWidget {
  const TelaOutros({Key? key}) : super(key: key);

  @override
  State<TelaOutros> createState() => _TelaOutrosState();
}

class _TelaOutrosState extends State<TelaOutros> {
  final telas = <Tela>[
    Tela('Tabelas de Preço', 'cp_tabelas_precos'),
    Tela('Formas de Pagamento', 'cf_formas_pagamentos'),
    Tela('Estoque', 'cp_estoques'),
    Tela('Rotas', 'cb_rotas'),
    Tela('Grupos', 'cp_grupos'),
    Tela('Contas', 'cf_contas'),
    Tela('Tipos de Cliente', 'cb_tipos_cliente'),
    // Tela('', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: telas.length,
      itemBuilder: (context, index) {
        return TileTela(
          item: telas[index],
        );
      },
    );
  }
}
