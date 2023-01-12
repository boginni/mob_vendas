import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/application.dart';
import 'package:mob_vendas/app/screens/util/tela_util_edit.dart';

import '../../../../../components/raw/icon_tile.dart';
import '../../../../util/tela_util_lista.dart';
import '../moddels/tela.dart';

class TileTela extends StatelessWidget {
  const TileTela({Key? key, required this.item}) : super(key: key);
  final Tela item;

  @override
  Widget build(BuildContext context) {
    return TileIcon(
      iconData: CupertinoIcons.add_circled,
      title: item.nome,
      onPressed: () {
        Application.navigate(
          context,
          TelaUtilLista(
            collection: item.collection,
            title: item.nome,
            telaNovo: TelaUtilEdit(collection: item.collection, title: item.nome,),
            itemBuilder: (context, item) {
              return TileIcon(
                iconData: CupertinoIcons.cube_box,
                title: item['nome'],
                onPressed: () {},
              );
            },
          ),
        );
      },
    );
  }
}
