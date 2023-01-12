import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mob_vendas/app/components/functions/permission_picker.dart';
import 'package:permission_handler/permission_handler.dart';


Future<ImageSource?> getSource(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Escolha uma fonte'),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 128,
                    onPressed: () {
                      getPermission(context, permission: Permission.camera)
                          .then((value) {
                        Navigator.of(context).pop(ImageSource.camera);
                      });
                    },
                    icon: Card(
                      child: Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 128,
                    onPressed: () {

                      getPermissions(context, permission: [
                        Permission.storage,
                        Permission.mediaLibrary
                      ]).then((value) {
                        Navigator.of(context).pop(ImageSource.gallery);
                      });

                    },
                    icon: Card(
                      child: Icon(
                        Icons.photo_library_sharp,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}


Future<File?> getRawImage(BuildContext context) async {
  final _imagePicker = ImagePicker();
  XFile? image;

  final source = await getSource(context);

  if (source == null) {
    return null;
  }

  image = await _imagePicker.pickImage(source: source);

  if (image == null) {
    return null;
  }

  return File(image.path);
}
