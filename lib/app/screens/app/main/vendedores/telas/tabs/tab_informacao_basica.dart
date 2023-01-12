import 'package:flutter/material.dart';

class TabInformacaoBasica extends StatefulWidget {
  const TabInformacaoBasica({Key? key}) : super(key: key);

  @override
  State<TabInformacaoBasica> createState() => _TabInformacaoBasicaState();
}

class _TabInformacaoBasicaState extends State<TabInformacaoBasica> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      setState(() {
        // onLoading = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
