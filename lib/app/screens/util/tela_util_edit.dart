import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaUtilEdit extends StatefulWidget {
  const TelaUtilEdit({Key? key, required this.collection, required this.title}) : super(key: key);


  final String collection;
  final String title;

  @override
  State<TelaUtilEdit> createState() => _TelaUtilEditState();
}

class _TelaUtilEditState extends State<TelaUtilEdit> {
  final controllerNome = TextEditingController();

  Future<void> salvar() async {
    final db = FirebaseFirestore.instance;
    await db.collection(widget.collection).add({'nome': controllerNome.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar ${widget.title}')),
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
      bottomNavigationBar: Container(
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
    );
  }
}
