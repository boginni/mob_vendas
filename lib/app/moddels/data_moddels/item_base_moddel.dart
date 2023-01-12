import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ItemBaseModdel {

  ItemBaseModdel();
  ItemBaseModdel.fromMap(QueryDocumentSnapshot<Map<String, dynamic>> document);

  toJson();

  String? getID();
  String getName();
}