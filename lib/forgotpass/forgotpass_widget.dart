import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../password_recover/password_recover_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotpassWidget extends StatefulWidget {
  ForgotpassWidget({Key key}) : super(key: key);

  @override
  _ForgotpassWidgetState createState() => _ForgotpassWidgetState();
}

class _ForgotpassWidgetState extends State<ForgotpassWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController(text: currentPhoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xC5FD0002),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0, -1),
              child: Image.asset(
                'assets/images/Mesa de trabajo 1.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 180),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Forgot Password?',
                                          textAlign: TextAlign.center,
                                          style:
                                              FlutterFlowTheme.title3.override(
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
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: Text(
                                            'Enter your email and Mobile number to recover your password. You will receive an OTP on the provided number to reset your password.',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(4, 0, 0, 15),
                                      child: Container(
                                        width: 300,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE0E0E0),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 20, 0),
                                          child: TextFormField(
                                            controller: emailTextController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Email',
                                              hintStyle: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFF455A64),
                                                fontWeight: FontWeight.normal,
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.email,
                                              ),
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF455A64),
                                              fontWeight: FontWeight.normal,
                                            ),
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
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 20, 0),
                                          child: TextFormField(
                                            controller: passwordTextController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Mobile number',
                                              hintStyle: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFF455A64),
                                                fontWeight: FontWeight.normal,
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.phone_android,
                                              ),
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF455A64),
                                              fontWeight: FontWeight.normal,
                                            ),
                                            keyboardType: TextInputType.phone,
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
                                          if (!formKey.currentState
                                              .validate()) {
                                            return;
                                          }
                                          if (passwordTextController
                                                  .text.isEmpty ||
                                              !passwordTextController.text
                                                  .startsWith('+')) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                    'Phone Number is required and has to start with +.'),
                                              ),
                                            );
                                            return;
                                          }
                                          await beginPhoneAuth(
                                            context: context,
                                            phoneNumber:
                                                passwordTextController.text,
                                            onCodeSent: () async {
                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      PasswordRecoverWidget(),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                          );
                                        },
                                        text: 'Send OTP',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 50,
                                          color: Color(0xFFFD0002),
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
