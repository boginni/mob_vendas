import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/app/components/drawer/custom_drawer.dart';
import 'package:mob_vendas/app/screens/app/main/venda/tela_venda.dart';
import 'package:mob_vendas/app/screens/app/messager/tela_messager.dart';
import 'package:provider/provider.dart';

import '../../../api/managers/page_manager.dart';
import '../../application.dart';
import 'main/cliente/tela_cliente.dart';
import 'main/outros/tela_outros.dart';
import 'main/produtos/tela_produto.dart';
import 'main/vendedores/tela_vendedores.dart';

class AppFoundation extends StatefulWidget {
  const AppFoundation({Key? key}) : super(key: key);

  @override
  State<AppFoundation> createState() => _AppFoundationState();
}

class _AppFoundationState extends State<AppFoundation> {
  late final PageManager pageManager;

  @override
  void initState() {
    super.initState();
    pageManager = PageManager(
      initialPage: 2,
      onChangePage: () {
        setState(() {});
      },
    );
  }

  final page_icons = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Vendedores',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.cube_box),
      label: 'Produtos',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      label: 'Vendas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people_alt_outlined),
      label: 'Clientes',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz),
      label: 'Outros',
    ),
  ];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    Widget p(Widget child) {
      return WillPopScope(
        onWillPop: () => pageManager.onWillPop(),
        child: child,
      );
    }

    const pages = <Widget>[
      TelaVendedores(),
      TelaProduto(),
      TelaVenda(),
      TelaCliente(),
      TelaOutros(),
    ];

    return Provider(
      create: (BuildContext context) {
        return pageManager;
      },
      child: WillPopScope(
        onWillPop: () => pageManager.onWillPop(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(page_icons[pageManager.page].label ?? ''),
            actions: [
              InkWell(
                onTap: () {
                  Application.navigate(context, TelaMessager());
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(CupertinoIcons.chat_bubble_2_fill),
                ),
              )
            ],
          ),
          drawer: CustomDrawer(),
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageManager.pageController,
            // children: [for (var page in pages) p(page)],
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: page_icons,
            currentIndex: pageManager.page,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            onTap: (value) => pageManager.setPage(value),
          ),
        ),
      ),
    );
  }
}
