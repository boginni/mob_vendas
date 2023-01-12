import 'package:flutter/material.dart';

class ContainerUserProfileBackgroud extends StatelessWidget {
  const ContainerUserProfileBackgroud(
      {Key? key, this.height, required this.child})
      : super(key: key);

  final double? height;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor.withAlpha((0.75 * 255).toInt()),
            Theme.of(context).primaryColorDark,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
