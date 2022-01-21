import 'package:design_system/widgets/button/custon_button_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPage> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility;
  bool _isAndroid = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: TextFormField(
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          // labelStyle: FlutterFlowTheme.bodyText1,
                          hintText: '[Enter your username...]',
                          // hintStyle: FlutterFlowTheme.bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF9E9E9E),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF9E9E9E),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person_outlined,
                          ),
                        ),
                        // style: FlutterFlowTheme.bodyText1,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(),
                            hintText: '[Enter your password...]',
                            hintStyle: const TextStyle(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF9E9E9E),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF9E9E9E),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                color: const Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: const TextStyle(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Sign in',
                            // options: FFButtonOptions(
                            //   width: 130,
                            //   height: 40,
                            //   color: FlutterFlowTheme.primaryColor,
                            //   textStyle: FlutterFlowTheme.subtitle2.override(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.white,
                            //   ),
                            //   borderSide: BorderSide(
                            //     color:  Colors.transparent,
                            //     width: 1,
                            //   ),
                            //   borderRadius: 12,
                            // ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: SizedBox(
                          width: 230,
                          height: 44,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: CustomButtonWidget(
                                  onPressed: () async {
                                    // final user = await signInWithGoogle(context);
                                    // if (user == null) {
                                    //   return;
                                    // }
                                    // await Navigator.pushAndRemoveUntil(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => LoginPageWidget(),
                                    //   ),
                                    //   (r) => false,
                                    // );
                                  },
                                  text: 'Sign in with Google',
                                  // icon: const Icon(
                                  //   Icons.add,
                                  //   color: Colors.transparent,
                                  //   size: 20,
                                  // ),
                                  // options: FFButtonOptions(
                                  //   width: 230,
                                  //   height: 44,
                                  //   color: Colors.white,
                                  //   textStyle: GoogleFonts.getFont(
                                  //     'Roboto',
                                  //     color: Color(0xFF606060),
                                  //     fontSize: 17,
                                  //   ),
                                  //   elevation: 4,
                                  //   borderSide: BorderSide(
                                  //     color: Colors.transparent,
                                  //     width: 0,
                                  //   ),
                                  //   borderRadius: 12,
                                  // ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.83, 0),
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: SizedBox(
                        width: 230,
                        height: 44,
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: CustomButtonWidget(
                                onPressed: () async {
                                  // final user = await signInWithFacebook(context);
                                  // if (user == null) {
                                  //   return;
                                  // }
                                  // await Navigator.pushAndRemoveUntil(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => LoginPageWidget(),
                                  //   ),
                                  //   (r) => false,
                                  // );
                                },
                                text: 'Login with Facebook',
                                // icon: Icon(
                                //   Icons.add,
                                //   color: Colors.transparent,
                                //   size: 20,
                                // ),
                                // options: FFButtonOptions(
                                //   width: 230,
                                //   height: 44,
                                //   color: Colors.white,
                                //   textStyle: GoogleFonts.getFont(
                                //     'Roboto',
                                //     color: Color(0xFF1877F2),
                                //     fontWeight: FontWeight.w500,
                                //     fontSize: 17,
                                //   ),
                                //   elevation: 4,
                                //   borderSide: BorderSide(
                                //     color: Colors.transparent,
                                //     width: 0,
                                //   ),
                                //   borderRadius: 12,
                                // ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.83, 0),
                              child: Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _isAndroid
                        ? Container()
                        : Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: CustomButtonWidget(
                              onPressed: () async {
                                // final user = await signInWithApple(context);
                                // if (user == null) {
                                //   return;
                                // }
                                // await Navigator.pushAndRemoveUntil(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => LoginPageWidget(),
                                //   ),
                                //   (r) => false,
                                // );
                              },
                              text: 'Sign in with Apple',
                              // icon: FaIcon(
                              //   FontAwesomeIcons.apple,
                              //   size: 20,
                              // ),
                              // options: FFButtonOptions(
                              //   width: 230,
                              //   height: 44,
                              //   color: Colors.white,
                              //   textStyle: GoogleFonts.getFont(
                              //     'Roboto',
                              //     color: Colors.black,
                              //     fontSize: 17,
                              //   ),
                              //   elevation: 4,
                              //   borderSide: BorderSide(
                              //     color: Colors.transparent,
                              //     width: 0,
                              //   ),
                              //   borderRadius: 12,
                              // ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
