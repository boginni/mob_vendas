import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mob_vendas/api/application/app_theme.dart';
import 'package:mob_vendas/app/screens/auth/login/components/login_tab.dart';
import 'package:mob_vendas/app/screens/auth/login/components/signup_tab.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);


  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                'https://png.pngtree.com/thumb_back/fw800/back_our/20190622/ourmid/pngtree-internet-blue-technology-minimalist-wind-background-image_208887.jpg',
              ),
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/2560px-Google_2015_logo.svg.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              isScrollable: true,
                              labelColor: Colors.white,
                              labelStyle: theme.textTheme.subTitle2(),
                              // FlutterFlowTheme.of(context).subtitle1,
                              indicatorColor: Colors.white,
                              tabs: const [
                                Tab(
                                  text: 'Login',
                                ),
                                Tab(
                                  text: 'Cadastro',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  LoginTab(),
                                  SignupTab(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: GradientText(
                    'Boginni.net',
                    style: theme.textTheme.title3(font: 'Poppins'),
                    colors: const [
                      Color(0xFF3DC7ED),
                      Color(0xFF395ED2),
                      Color(0xFF8B5BE0)
                    ],
                    gradientDirection: GradientDirection.rtl,
                    gradientType: GradientType.linear,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: InkWell(
                    child: const Icon(
                      Icons.help_outlined,
                      size: 35,
                    ),
                    onTap: () {
                      print('Button_Help pressed ...');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
