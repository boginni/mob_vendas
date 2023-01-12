import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../api/application/app_user.dart';

class Produto {
  static final String collection_name = 'cp_produtos';

  static CollectionReference<Map<String, dynamic>> getCollection() {
    return FirebaseFirestore.instance.collection(collection_name);
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> getData(
      {String? id}) async {
    final db = getCollection();

    final query = db.where('on_create', isEqualTo: false);

    if (id == null) {
      return await query.get();
    }

    return await query.where('id_user', isEqualTo: id).get();
  }

  static Future<Produto> create(BuildContext context) async {
    final db = getCollection();

    var res = await db
        .where('on_create', isEqualTo: true)
        .where('id_user', isEqualTo: AppUser.of(context).getID())
        .get();

    late final DocumentReference doc;

    if (res.size == 0) {
      doc = await db.add(
        {
          'id_user': AppUser.of(context).getID(),
          'on_create': true,
        },
      );
    } else {
      doc = res.docs[0].reference;
    }

    return Produto.parse(doc);
  }

  QueryDocumentSnapshot? doc;
  String? id;
  String nome = '';

  Produto();

  factory Produto.parse(DocumentReference doc) {
    return Produto();
  }

  Future<void> save(BuildContext context, {String? id}) async {
    await getCollection().add(
      {
        'id_user': AppUser.of(context).getID(),
        'nome': nome,
        'on_create': false,
      },
    );
  }

// Future<String> addImg() async {
//   snapshot = await FirebaseStorage.instance
//       .ref()
//       .child('images/profile/${AppUser.of(context).getID()}')
//       .putFile(file);
// }

}
