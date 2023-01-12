import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> _checkPermission(BuildContext context) async {
  FocusScope.of(context).requestFocus(FocusNode());

  Map<Permission, PermissionStatus> statues = await [
    Permission.camera,
    Permission.storage,
    Permission.mediaLibrary
  ].request();

  PermissionStatus? statusCamera = statues[Permission.camera];
  PermissionStatus? statusStorage = statues[Permission.storage];
  PermissionStatus? statusPhotos = statues[Permission.mediaLibrary];

  bool isGranted = statusCamera == PermissionStatus.granted &&
      statusStorage == PermissionStatus.granted &&
      statusPhotos == PermissionStatus.granted;

  print(statusCamera);
  print(statusStorage);
  print(statusPhotos);

  return isGranted;
  if (isGranted) {
    // openCameraGallery();
    //_openDialog(context);
  }
}

Future<bool> getPermission(BuildContext context,
    {required Permission permission, bool force = false}) async {
  if (await permission.request() == PermissionStatus.granted) {
    return true;
  }

  if (force) {
    alertPermission(context);
  }

  return false;
}

Future<bool> getPermissions(BuildContext context,
    {required List<Permission> permission,
    bool all = true,
    bool force = false}) async {
  final resultSet = await permission.request();

  bool ok = false;

  resultSet.forEach((key, value) {
    final x = value.isGranted;
    ok = all ? ok && x : ok || x;
  });

  if (force) {
    alertPermission(context);
  }

  return false;
}

alertPermission(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Permissões Negadas'),
              TextButton(
                onPressed: () {
                  openAppSettings();
                  Navigator.of(context).pop();
                },
                child: Text('Abrir Configurações'),
              )
            ],
          ),
        ),
      );
    },
  );
}
