import 'package:flutter/material.dart';
import 'package:mob_vendas/app/application.dart';

class TelaInformacoes extends StatefulWidget {
  const TelaInformacoes({Key? key}) : super(key: key);

  @override
  State<TelaInformacoes> createState() => _TelaInformacoesState();
}

class _TelaInformacoesState extends State<TelaInformacoes> {
  @override
  Widget build(BuildContext context) {
    final headingStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).primaryColor);

    return Scaffold(
      appBar: AppBar(
        title: Text('Informações'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text('Mob Vendas'),
            Text('boginni.net'),
            Text('Versão : ${Application.versao}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Misc", style: headingStyle),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.file_open_outlined),
              title: Text("Terms of Service"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text("Open Source and Licences"),
            ),
          ],
        ),
      ),
    );
  }
}
