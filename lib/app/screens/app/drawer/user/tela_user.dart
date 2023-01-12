import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/api/application/app_user.dart';
import 'package:mob_vendas/app/components/functions/image_picker.dart';
import 'package:mob_vendas/app/components/raw/bottom_sheet_edit_control.dart';
import 'package:mob_vendas/app/components/raw/container_loading.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_user_profile.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_user_profile_backgroud.dart';

import '../../../../application.dart';

class TelaUser extends StatefulWidget {
  const TelaUser({Key? key}) : super(key: key);

  @override
  _TelaUserState createState() => _TelaUserState();
}

class _TelaUserState extends State<TelaUser> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late final QueryDocumentSnapshot<Map<String, dynamic>> doc;

  final controllerDisplayName = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      FirebaseFirestore.instance
          .collection("users")
          .where('id', isEqualTo: AppUser.of(context).user.uid)
          .get()
          .then((value) {
        doc = value.docs[0];
        perfilPublic = doc.data()['pefil_publico'] ?? false;
        controllerDisplayName.text = AppUser.of(context).user.displayName ?? '';
        setState(() {
          onLoading = false;
        });
      });
    });
  }

  late bool perfilPublic;
  bool onLoading = true;

  bool onChange = false;
  bool onSaving = false;

  changeValue(Function? f) {
    setState(() {
      onChange = true;
      if (f != null) {
        f();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = AppUser.of(context).user;

    final theme = AppTheme.of(context);

    final headingStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).primaryColor);

    return Scaffold(
      appBar: AppBar(
        title: !onSaving
            ? null
            : Row(
                children: [
                  Text('Salvando'),
                  CircularProgressIndicator(),
                ],
              ),
      ),
      bottomSheet: onLoading
          ? null
          : BottomSheetEditControl(
              onCancel: () {
                Navigator.of(context).pop();
              },
              onSave: !onChange || onSaving
                  ? null
                  : () async {
                      setState(() {
                        onChange = false;
                        onSaving = true;
                      });

                      if (controllerDisplayName.text != user.displayName) {
                        await user
                            .updateDisplayName(controllerDisplayName.text);
                        Application.reloadUser(context);
                      }

                      await doc.reference.update({
                        'photo_url': user.photoURL ?? '',
                        'nome': controllerDisplayName.text ?? '',
                        'pefil_publico': perfilPublic ?? '',
                      });

                      setState(() {
                        onSaving = false;
                      });
                    },
            ),
      body: onLoading
          ? ContainerLoading()
          : ListView(
              shrinkWrap: true,
              children: [
                ContainerUserProfileBackgroud(
                  child: ContainerUserProfile(
                    onProfilePressed: () async {
                      final file = await getRawImage(context);
                      if (file != null) {
                        var snapshot = await FirebaseStorage.instance
                            .ref()
                            .child(
                                'images/profile/${AppUser.of(context).getID()}')
                            .putFile(file);

                        var downloadUrl = await snapshot.ref.getDownloadURL();

                        await AppUser.of(context)
                            .user
                            .updatePhotoURL(downloadUrl);

                        setState(() {

                        });
                      }
                    },
                    profileUrl: user.photoURL,
                    displayName: user.displayName,
                    email: user.email,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: controllerDisplayName,
                        onChanged: (x) {
                          changeValue(null);
                        },
                      ),
                      Text("Account", style: headingStyle),
                      const ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone Number"),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(Icons.mail),
                        title: Text("Email"),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.fingerprint),
                        title: const Text("Perfil Público"),
                        trailing: Switch(
                          value: perfilPublic,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (val) {
                            changeValue(() {
                              perfilPublic = !perfilPublic;
                            });
                          },
                        ),
                      ),
                      // const Divider(),
                      // ListTile(
                      //   leading: const Icon(Icons.fingerprint),
                      //   title: const Text("Perfil Público"),
                      //   trailing: Switch(
                      //       value: false,
                      //       activeColor: Theme.of(context).primaryColor,
                      //       onChanged: (val) {}),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
