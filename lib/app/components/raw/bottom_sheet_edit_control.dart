import 'package:flutter/material.dart';

class BottomSheetEditControl extends StatelessWidget {
  const BottomSheetEditControl({Key? key, this.onCancel, this.onSave})
      : super(key: key);

  final void Function()? onCancel;
  final void Function()? onSave;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: onCancel,
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: onSave,
              child: Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }
}
