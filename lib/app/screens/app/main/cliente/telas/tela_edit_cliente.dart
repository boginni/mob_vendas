import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';

import '../moddels/pessoa.dart';
import 'tabs/tab_cadastro_basico.dart';
import 'tabs/tab_contato.dart';
import 'tabs/tab_endereco.dart';

class TelaEditCliente extends StatefulWidget {
  const TelaEditCliente({Key? key, this.pessoa}) : super(key: key);

  final Pessoa? pessoa;

  @override
  State<TelaEditCliente> createState() => _TelaEditClienteState();
}

class _TelaEditClienteState extends State<TelaEditCliente> {
  final controllerNome = TextEditingController();

  Future<void> salvar() async {
    final db = FirebaseFirestore.instance;
    await db.collection("pessoas").add({'nome': controllerNome.text});
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cliente'),
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle: AppTheme.of(context).textTheme.body(
                  font: 'Lexend Deca',
                ),
            // indicatorColor: FlutterFlowTheme.of(context).primaryColor,
            tabs: [
              Tab(
                text: 'Inf. basica',
              ),
              Tab(
                text: 'Contatos',
              ),
              Tab(
                text: 'Endereço',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabCadastroBasico(),
            TabContato(),
            TabEndereco(),
          ],
        ),
        bottomSheet: Container(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    salvar().then((value) => Navigator.of(context).pop(true));
                  },
                  child: Text('Salvar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Padding(
//   padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 50),
//   child: Row(
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Expanded(
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//           child: TextButton(
//             onPressed: () {
//               print('Button pressed ...');
//             }, child: Text('Atualizar Dados'),
//             // text: 'Atualizar dados',
//             // options: FFButtonOptions(
//             //   width: double.infinity,
//             //   height: 40,
//             //   color: Color(0xC839ABEF),
//             //   textStyle:
//             //   FlutterFlowTheme.of(context).subtitle2.override(
//             //     fontFamily: 'Lexend Deca',
//             //     color: Colors.white,
//             //     fontWeight: FontWeight.normal,
//             //   ),
//             //   borderSide: BorderSide(
//             //     color: Colors.transparent,
//             //     width: 1,
//             //   ),
//             //   borderRadius: BorderRadius.circular(8),
//             // ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
