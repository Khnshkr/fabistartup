import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRecoverWidget extends StatefulWidget {
  PasswordRecoverWidget({Key key}) : super(key: key);

  @override
  _PasswordRecoverWidgetState createState() => _PasswordRecoverWidgetState();
}

class _PasswordRecoverWidgetState extends State<PasswordRecoverWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility1;
  TextEditingController textController;
  bool passwordVisibility2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility1 = false;
    textController = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Password Reset',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 2, 0),
                      child: Text(
                        'Please enter your OTP and a new password to update your password.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 15),
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: emailTextController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'OTP',
                                  hintStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFF455A64),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
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
                                  prefixIcon: Icon(
                                    Icons.phonelink_ring,
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'This field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: passwordTextController,
                                obscureText: !passwordVisibility1,
                                decoration: InputDecoration(
                                  hintText: 'New Password',
                                  hintStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFF455A64),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
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
                                  prefixIcon: Icon(
                                    Icons.vpn_key_sharp,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility1 =
                                          !passwordVisibility1,
                                    ),
                                    child: Icon(
                                      passwordVisibility1
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'This field is required';
                                  }
                                  if (val.length < 10) {
                                    return 'Please enter a valid mobile number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E0E0),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: TextFormField(
                                controller: textController,
                                obscureText: !passwordVisibility2,
                                decoration: InputDecoration(
                                  hintText: 'Confirm new password',
                                  hintStyle: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFF455A64),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
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
                                  prefixIcon: Icon(
                                    Icons.vpn_key_sharp,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility2 =
                                          !passwordVisibility2,
                                    ),
                                    child: Icon(
                                      passwordVisibility2
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'This field is required';
                                  }
                                  if (val.length < 10) {
                                    return 'Please enter a valid mobile number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              if (emailTextController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Enter SMS verification code.'),
                                  ),
                                );
                                return;
                              }
                              final phoneVerifiedUser = await verifySmsCode(
                                context: context,
                                smsCode: emailTextController.text,
                              );
                              if (phoneVerifiedUser == null) {
                                return;
                              }
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'HomePage'),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Send OTP',
                            options: FFButtonOptions(
                              width: 300,
                              height: 50,
                              color: Color(0xFFFD0002),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0,
                              ),
                              borderRadius: 25,
                            ),
                          ),
                        )
                      ],
                    ),
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
