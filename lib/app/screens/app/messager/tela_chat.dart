import 'package:flutter/material.dart';

class TelaChat extends StatefulWidget {
  const TelaChat({Key? key}) : super(key: key);

  @override
  State<TelaChat> createState() => _TelaChatState();
}

class _TelaChatState extends State<TelaChat> {
  late TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();

    // Firestore.instance
    //     .collection('messages')
    //     .document(groupChatId)
    //     .collection(groupChatId)
    //     .orderBy('timestamp', descending: true)
    //     .limit(_limit)
    //     .snapshots()

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 40,
              height: 40,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                'https://picsum.photos/seed/320/600',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Lorem',
            ),
          ],
        ),
      ),
      body: ListView(),
      bottomSheet: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Mensagem',
                      // hintStyle:
                      //     FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      // fillColor: FlutterFlowTheme.of(context)
                      //     .primaryBtnText,
                    ),
                    // style: FlutterFlowTheme.of(context).bodyText1,
                    maxLines: null,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              child: Icon(
                Icons.send,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
