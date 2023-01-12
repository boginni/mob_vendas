import 'package:flutter/material.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/screens/app/messager/tela_chat.dart';

class TelaMessager extends StatefulWidget {
  const TelaMessager({Key? key}) : super(key: key);

  @override
  State<TelaMessager> createState() => _TelaMessagerState();
}

class _TelaMessagerState extends State<TelaMessager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messager'),),
      body: ListView(
        children: [
          TextButton(onPressed: (){

            Application.navigate(context, TelaChat());

          }, child: Text('Teste'))
        ],
      ),
    );
  }
}
