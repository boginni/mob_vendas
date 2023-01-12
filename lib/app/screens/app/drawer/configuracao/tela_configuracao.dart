import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaConfiguracao extends StatefulWidget {
  const TelaConfiguracao({Key? key}) : super(key: key);

  @override
  State<TelaConfiguracao> createState() => _TelaConfiguracaoState();
}

class _TelaConfiguracaoState extends State<TelaConfiguracao> {


  bool lockAppSwitchVal = true;
  bool fingerprintSwitchVal = false;
  bool changePassSwitchVal = true;

  TextStyle headingStyleIOS = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: CupertinoColors.inactiveGray,
  );

  TextStyle descStyleIOS = const TextStyle(color: CupertinoColors.inactiveGray);


  @override
  Widget build(BuildContext context) {
    final headingStyle =  TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor);

    return Scaffold(
      appBar: AppBar(title: Text('Confgurações'),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Common",
                    style: headingStyle,
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Security", style: headingStyle),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.phonelink_lock_outlined),
                title: const Text("Lock app in background"),
                trailing: Switch(
                    value: lockAppSwitchVal,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (val) {
                      setState(() {
                        lockAppSwitchVal = val;
                      });
                    }),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.fingerprint),
                title: const Text("Use fingerprint"),
                trailing: Switch(
                    value: fingerprintSwitchVal,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (val) {
                      setState(() {
                        fingerprintSwitchVal = val;
                      });
                    }),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Change Password"),
                trailing: Switch(
                    value: changePassSwitchVal,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (val) {
                      setState(() {
                        changePassSwitchVal = val;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
