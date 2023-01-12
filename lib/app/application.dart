import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mob_vendas/api/application/app_user.dart';
import 'package:provider/provider.dart';

import '../api/application/app_theme.dart';
import '../firebase_options.dart';
import 'screens/app/app_foundation.dart';
import 'screens/auth/login/tela_login.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  static const String versao = '0.0.1';

  @override
  State<StatefulWidget> createState() => _ApplicationState();

  static logout(BuildContext context) {
    final _ApplicationState? state =
        context.findAncestorStateOfType<_ApplicationState>();
    if (state != null) {
      state.logout();
    }
  }

  static Future navigate(context, Widget tela) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => tela,
      ),
    );
  }

  static void login(BuildContext context, User user) {
    final _ApplicationState? state =
        context.findAncestorStateOfType<_ApplicationState>();

    if (state != null) {
      state.login(user);
    }
  }

  static void reloadUser(BuildContext context) {
    final _ApplicationState? state =
    context.findAncestorStateOfType<_ApplicationState>();

    if (state != null) {
      state.reloadUser();
    }

  }
}

class _ApplicationState extends State<Application> {
  Key mainApplicationKey = UniqueKey();

  void performHotRestart() {
    setState(() {
      onLoading = false;
      mainApplicationKey = UniqueKey();
    });
  }

  late bool onAuth;
  bool onLoading = true;
  AppUser appUser = AppUser();

  void logout() {

    setState(() {
      onLoading = true;
    });


    FirebaseAuth.instance.signOut().then((value) {
      onAuth = true;
      performHotRestart();
    });

  }

  void login(User user) {
    onAuth = false;
    appUser.login(user);
    performHotRestart();
  }


  void reloadUser(){
    appUser.user = FirebaseAuth.instance.currentUser!;
  }

  @override
  void initState() {
    super.initState();
    onAuth = true;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        setState(() {
          onLoading = false;
          if (user != null) {
            onAuth = false;
            appUser.login(user);
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: mainApplicationKey,
      child: MultiProvider(
        providers: [
          Provider<AppTheme>(create: (context) {
            return AppTheme();
          }),
          Provider<AppUser>(create: (context) {
            return appUser;
          }),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final theme = AppTheme.of(context);

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: theme.colorTheme.primaryColor,
                scaffoldBackgroundColor: theme.colorTheme.secondaryColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                primaryIconTheme:
                    const IconThemeData(color: Colors.black, opacity: 255),
                appBarTheme: AppBarTheme(
                  elevation: 1,
                  backgroundColor: theme.colorTheme.primaryColor,
                  // iconTheme: const IconThemeData(color: Colors.black),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                textButtonTheme: TextButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ),
              darkTheme: ThemeData(),
              home: onLoading
                  ? const Scaffold(
                      body: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : onAuth
                      ? TelaLogin(
                          // onSubimit: () {
                          //   setState(() {
                          //     onAuth = false;
                          //   });
                          // },
                          )
                      : const AppFoundation(),
            );
          },
        ),
      ),
    );
  }
}
