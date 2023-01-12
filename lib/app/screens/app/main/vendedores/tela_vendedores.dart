import 'package:flutter/material.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_profile_icon.dart';
import 'package:mob_vendas/app/screens/app/main/vendedores/telas/tela_vendedor.dart';
import 'package:mob_vendas/app/screens/util/tela_util_lista.dart';

import '../../../../application.dart';

class TelaVendedores extends StatelessWidget {
  const TelaVendedores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TelaUtilLista(
      collection: 'users',
      itemBuilder: (context, item) {
        final map = item.data();
        return Padding(
          padding: EdgeInsets.only(bottom: 2),
          child: TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
            onPressed: () {
              Application.navigate(
                context,
                TelaVendedor(
                  doc: item,
                ),
              );
            },
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: ContainerProfileIcon(
                        size: 48,
                        border: 1,
                        profileUrl: map['photo_url'],
                      ),
                    ),
                  ),
                  // VerticalDivider(
                  //   // color: Colors.black,
                  //   // thickness: 2,
                  // ),
                  Text(
                    map['nome'],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      shadows: [
                        // Shadow(
                        //   offset: Offset(1.0, 1.0),
                        //   blurRadius: 3.0,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
