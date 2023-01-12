import 'package:flutter/material.dart';

import '../drawer/drawer_tile.dart';


class TileIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  final Function() onPressed;

  const TileIcon(
      {Key? key,
        required this.iconData,
        required this.title,
        required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        child: DrawerTileStatic(
          iconData: iconData,
          selected: false,
          title: title,
        ),
      ),
    );
  }
}