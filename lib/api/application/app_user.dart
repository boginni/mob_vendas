import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AppUser {
  bool isValid = false;
  String? id;
  late User user;

  login(User u){
    user = u;
    isValid = true;
    id = user.uid;
  }

  String getID(){
    return id!;
  }

  AppUser();

  factory AppUser.of(BuildContext context) {
    return context.read<AppUser>();
  }


}
