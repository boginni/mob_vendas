import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mob_vendas/app/application.dart';

class TelaAjuda extends StatefulWidget {
  const TelaAjuda({Key? key}) : super(key: key);

  @override
  State<TelaAjuda> createState() => _TelaAjudaState();
}

class _TelaAjudaState extends State<TelaAjuda> {
  @override
  Widget build(BuildContext context) {
    final headingStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).primaryColor);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ajuda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const ListTile(
              leading: Icon(FontAwesomeIcons.whatsapp),
              title: Text("Whatsapp"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(FontAwesomeIcons.youtube),
              title: Text("Youtube"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(FontAwesomeIcons.sitemap),
              title: Text("Site"),
            ),
          ],
        ),
      ),
    );
  }
}
