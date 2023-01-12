import 'package:flutter/material.dart';
import 'package:mob_vendas/app/screens/app/drawer/user/components/container_profile_icon.dart';

import '../../../../../../api/application/app_theme.dart';

class ContainerUserProfile extends StatelessWidget {
  const ContainerUserProfile(
      {Key? key,
      this.onProfilePressed,
      this.profileUrl,
      this.displayName,
      this.email})
      : super(key: key);

  final void Function()? onProfilePressed;
  final String? profileUrl;
  final String? displayName;
  final String? email;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            ContainerProfileIcon(
              size: 90,
              profileUrl: profileUrl,
              onProfilePressed: onProfilePressed,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Card(
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          displayName ?? '',
          style: theme.textTheme.title2(font: 'Lexend Deca'),
        ),
        Text(
          email ?? '',
          style: theme.textTheme.detail(font: 'Lexend Deca'),
        ),
      ],
    );
  }
}
