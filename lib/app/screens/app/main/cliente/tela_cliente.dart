import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:mob_vendas/app/screens/app/main/cliente/moddels/pessoa.dart';
import 'package:mob_vendas/app/screens/app/main/cliente/telas/tela_edit_cliente.dart';

import '../../../../components/raw/icon_tile.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      getData();
    });
  }

  List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = [];

  Future<void> getData() async {
    final db = FirebaseFirestore.instance;
    db.collection("pessoas").get().then((value) {
      setState(() {
        docs = value.docs;
        onloading = false;
      });
    });
  }

  bool onloading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onloading
          ? ContainerLoading()
          : RefreshIndicator(
              onRefresh: getData,
              child: ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  final item = Pessoa.fromJson(docs[index]);
                  return TileIcon(
                    iconData: CupertinoIcons.cube_box,
                    title: item.getName(),
                    onPressed: () {
                      Application.navigate(
                        context,
                        TelaEditCliente(
                          pessoa: item,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Clientes: '),
                  Text(
                    docs.length.toString(),
                    style: AppTheme.of(context).textTheme.subTitle2(),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    Application.navigate(context, TelaEditCliente()).then(
                      (value) {
                        if (value) {
                          getData();
                        }
                      },
                    );
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
