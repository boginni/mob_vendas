import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TabFotos extends StatefulWidget {
  const TabFotos({Key? key}) : super(key: key);

  @override
  State<TabFotos> createState() => _TabFotosState();
}

class _TabFotosState extends State<TabFotos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColorLight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text('Adicionar'),
                ),
                Icon(
                  Icons.add_photo_alternate,
                  // color:
                  // FlutterFlowTheme.of(context)
                  //     .primaryColor
                ),
              ],
            ),
            onPressed: () {
              print('add_mais pressed ...');
            },
          ),
          GridView.count(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            crossAxisCount: 2,
            childAspectRatio: 1.29,
            children: [
              ImageGridTile(),
              ImageGridTile(),
              ImageGridTile(),
            ],
          )
        ],
      ),
    );
  }
}

class ImageGridTile extends StatelessWidget {
  const ImageGridTile({Key? key}) : super(key: key);

  static final String placeholder =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: ElevatedButton(
        onPressed: () {

        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.zero,
        ),
        child: CachedNetworkImage(imageUrl: placeholder),
      ),
    );
  }
}
