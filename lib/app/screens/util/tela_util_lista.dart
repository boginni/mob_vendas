import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';

class TelaUtilLista extends StatefulWidget {
  const TelaUtilLista({
    Key? key,
    required this.collection,
    this.telaNovo,
    this.title,
    required this.itemBuilder,
  }) : super(key: key);

  final String collection;
  final String? title;
  final Widget? telaNovo;

  final Widget Function(BuildContext context,
      QueryDocumentSnapshot<Map<String, dynamic>> item) itemBuilder;

  @override
  State<TelaUtilLista> createState() => TelaUtilListaState();
}

class TelaUtilListaState extends State<TelaUtilLista> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      getData();
    });
  }

  List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = [];

  Future<void> getData() async {
    final db = FirebaseFirestore.instance;

    print('col ${widget.collection}');

    db.collection(widget.collection).get().then((value) {
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
      appBar: widget.title == null
          ? null
          : AppBar(
              title: Text(widget.title!),
            ),
      body: onloading
          ? ContainerLoading()
          : RefreshIndicator(
              onRefresh: getData,
              child: ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return widget.itemBuilder(context, docs[index]);
                },
              ),
            ),
      bottomNavigationBar: widget.telaNovo == null
          ? null
          : Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Total: '),
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
                          Application.navigate(context, widget.telaNovo!).then(
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
