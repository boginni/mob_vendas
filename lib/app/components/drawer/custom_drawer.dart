// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/api/application/app_user.dart';
import 'package:mob_vendas/app/screens/app/drawer/ajuda/tela_ajuda.dart';
import 'package:mob_vendas/app/screens/app/drawer/empresa/tela_empresa.dart';
import 'package:mob_vendas/app/screens/app/drawer/informacoes/tela_informacoes.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/tela_user.dart';

import '../../application.dart';
import '../../screens/app/drawer/configuracao/tela_configuracao.dart';
import '../../screens/app/drawer/user/components/container_user_profile.dart';
import '../../screens/app/drawer/user/components/container_user_profile_backgroud.dart';
import 'drawer_tile.dart';

int curId = 0;

int getNextId() {
  return curId++;
}

class CustomDrawer extends StatefulWidget {
  // final bool Function()? onChange = (){ return true;};

  const CustomDrawer({Key? key}) : super(key: key); //this.onChanges

  @override
  State<StatefulWidget> createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    bool logo = true;
    int i = 0;
    final theme = AppTheme.of(context);
    final user = AppUser.of(context).user;
    return Drawer(
      child: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {
              Application.navigate(context, TelaUser());
            },
            child: ContainerUserProfileBackgroud(
              child: ContainerUserProfile(
                profileUrl: user.photoURL,
                displayName: user.displayName,
                email: user.email,
              ),
            ),
          ),
          // Divider(color: Colors.grey[800]),
          DrawerTile(
            iconData: Icons.home,
            title: 'Empresa',
            onPressed: () {
              Application.navigate(context, TelaEmpresa());
            },
          ),
          Divider(),
          DrawerExpansionTile(
            iconData: CupertinoIcons.chart_bar_circle,
            title: 'Dashboard',
            children: [
              DrawerTile(
                iconData: Icons.monetization_on,
                title: 'Vendas',
                onPressed: () {},
              ),
              DrawerTile(
                iconData: Icons.area_chart,
                title: 'Metas',
                onPressed: () {},
              ),
              DrawerTile(
                iconData: Icons.note,
                title: 'Contas',
                onPressed: () {},
              ),
            ],
            id: -1,
          ),
          Divider(color: Colors.grey[800]),
          DrawerTile(
            iconData: Icons.settings,
            title: 'Configurações',
            onPressed: () {
              Application.navigate(context, TelaConfiguracao());
            },
          ),
          DrawerTile(
            iconData: Icons.info,
            title: 'Informações',
            onPressed: () {
              Application.navigate(context, TelaInformacoes());
            },
          ),
          DrawerTile(
            iconData: Icons.help,
            title: 'Ajuda',
            onPressed: () {
              Application.navigate(context, TelaAjuda());
            },
          ),
          Divider(color: Colors.grey[800]),
          DrawerTile(
            iconData: Icons.logout,
            title: 'Sair',
            page: 999,
            onPressed: () => Application.logout(context),
          ),
        ],
      ),
    );
  }
}
