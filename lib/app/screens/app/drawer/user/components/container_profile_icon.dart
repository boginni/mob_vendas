import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ContainerProfileIcon extends StatelessWidget {
  const ContainerProfileIcon({
    Key? key,
    this.size = 90,
    this.border = 4,
    this.profileUrl,
    this.onProfilePressed,
  }) : super(key: key);

  final void Function()? onProfilePressed;
  final String? profileUrl;
  final double size;
  final double border;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(),
      child: Padding(
        padding: EdgeInsets.all(border),
        child: InkWell(
          onTap: onProfilePressed,
          child: Container(
            width: size,
            height: size,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CachedNetworkImage(
              imageUrl: (profileUrl ?? '').toString().isNotEmpty
                  ? profileUrl!
                  : 'https://picsum.photos/seed/709/600',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
