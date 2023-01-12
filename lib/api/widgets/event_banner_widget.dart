import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'account_info_widget.dart';

class EventBannerWidget extends StatefulWidget {
  const EventBannerWidget({Key? key, required this.onClick}) : super(key: key);


  final void Function() onClick;

  @override
  State<EventBannerWidget> createState() => _EventBannerWidgetState();
}

class _EventBannerWidgetState extends State<EventBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CachedNetworkImage(
              imageUrl: 'https://picsum.photos/seed/770/600',
              width: MediaQuery.of(context).size.width,
              height: 150,
              fit: BoxFit.cover,
            ),
            AccountInfoWidget(),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lobortis molestie aliquet. Phasellus non massa ac urna viverra venenatis non vitae elit. Quisque lectus ipsum,',
                // style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 32,
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: Text(
                        '1648',
                        // style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                  child: Icon(
                    Icons.more,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
