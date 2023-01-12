import 'package:flutter/material.dart';
import 'package:mob_vendas/app/components/raw/bottom_sheet_edit_control.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/moddels/produto.dart';
import 'package:mob_vendas/app/screens/app/main/produtos/telas/tela_view_produto.dart';

import '../../../../../application.dart';

class TelaEditProduto extends StatefulWidget {
  const TelaEditProduto({Key? key}) : super(key: key);

  @override
  State<TelaEditProduto> createState() => _TelaEditProdutoState();
}

class _TelaEditProdutoState extends State<TelaEditProduto> {
  final controllerNome = TextEditingController();

  Future<void> salvar() async {
    final p = Produto();
    p.nome = controllerNome.text;

    await p.save(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Produto'), actions: [
        IconButton(
          icon: Icon(Icons.remove_red_eye),
          onPressed: () {
            Application.navigate(context, TelaViewProduto());
          },
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Nome'),
            TextField(
              controller: controllerNome,
            )
          ],
        ),
      ),
      bottomSheet: BottomSheetEditControl(
        onCancel: () {
          Navigator.of(context).pop(false);
        },
        onSave: () {
          salvar().then((value) {
            Navigator.of(context).pop(true);
          });
        },
      ),
    );
  }
}
