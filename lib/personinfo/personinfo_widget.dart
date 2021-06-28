import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PersoninfoWidget extends StatefulWidget {
  PersoninfoWidget({Key key}) : super(key: key);

  @override
  _PersoninfoWidgetState createState() => _PersoninfoWidgetState();
}

class _PersoninfoWidgetState extends State<PersoninfoWidget> {
  String categoryValue;
  TextEditingController textController10;
  TextEditingController textController11;
  String genderValue;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final pageViewController = PageController();
  TextEditingController textController5;
  TextEditingController textController6;
  TextEditingController textController7;
  TextEditingController textController8;
  TextEditingController textController9;
  TextEditingController textController12;
  TextEditingController textController13;
  TextEditingController textController14;
  TextEditingController textController15;
  TextEditingController textController16;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: currentUserDisplayName);
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController(text: currentPhoneNumber);
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    textController10 = TextEditingController();
    textController11 = TextEditingController();
    textController12 = TextEditingController();
    textController13 = TextEditingController();
    textController14 = TextEditingController();
    textController15 = TextEditingController();
    textController16 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: StreamBuilder<List<PersonalinfoRecord>>(
        stream: queryPersonalinfoRecord(
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          List<PersonalinfoRecord> personinfoPersonalinfoRecordList =
              snapshot.data;
          // Customize what your widget looks like with no query results.
          if (snapshot.data.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text('No results.'),
              ),
            );
          }
          final personinfoPersonalinfoRecord =
              personinfoPersonalinfoRecordList.first;
          return Scaffold(
            key: scaffoldKey,
            body: SafeArea(
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: currentUserPhoto,
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: Alignment(-0.15, 0),
                                child: Text(
                                  'Personal Info',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                Icons.menu_rounded,
                                color: Colors.black,
                                size: 28,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 600,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Align(
                              alignment: Alignment(0.55, 0.5),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: DefaultTabController(
                                  length: 2,
                                  initialIndex: 0,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        isScrollable: true,
                                        labelColor:
                                            FlutterFlowTheme.primaryColor,
                                        indicatorColor:
                                            FlutterFlowTheme.secondaryColor,
                                        tabs: [
                                          Tab(
                                            text: 'Personal info',
                                            icon: Icon(
                                              Icons.perm_identity_outlined,
                                            ),
                                          ),
                                          Tab(
                                            text: 'Educational info',
                                            icon: Icon(
                                              Icons.menu_book_sharp,
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 400,
                                              child: Stack(
                                                children: [
                                                  PageView(
                                                    controller:
                                                        pageViewController,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              45,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        ' Update Name:',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: Alignment(0, 0.5),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                child: TextFormField(
                                                                                  controller: textController1,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintText: 'Update your name',
                                                                                    hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Poppins',
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
                                                                                  ),
                                                                                  style: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  keyboardType: TextInputType.name,
                                                                                  validator: (val) {
                                                                                    if (val.isEmpty) {
                                                                                      return 'This Field Is required';
                                                                                    }
                                                                                    if (val.length < 10) {
                                                                                      return 'Please Enter a Valid Phone Number';
                                                                                    }
                                                                                    return null;
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Gender:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                      child: FlutterFlowDropDown(
                                                                                        options: [
                                                                                          'Male',
                                                                                          'Female',
                                                                                          'Other'
                                                                                        ],
                                                                                        onChanged: (value) {
                                                                                          setState(() => genderValue = value);
                                                                                        },
                                                                                        width: 120,
                                                                                        height: 40,
                                                                                        textStyle: FlutterFlowTheme.bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: Colors.black,
                                                                                        ),
                                                                                        fillColor: Color(0xFFEEEEEE),
                                                                                        elevation: 2,
                                                                                        borderColor: Colors.transparent,
                                                                                        borderWidth: 0,
                                                                                        borderRadius: 25,
                                                                                        margin: EdgeInsets.fromLTRB(8, 9, 8, 9),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Aadhaar number:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: Alignment(0, 0.5),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                        child: TextFormField(
                                                                                          controller: textController2,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintText: 'Enter your Aadhar number',
                                                                                            hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                          ),
                                                                                          textAlign: TextAlign.start,
                                                                                          validator: (val) {
                                                                                            if (val.isEmpty) {
                                                                                              return 'This Field Is required';
                                                                                            }
                                                                                            if (val.length < 12) {
                                                                                              return 'Please enter a valid Aadhar number';
                                                                                            }
                                                                                            return null;
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'PAN number:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: Alignment(0, 0.5),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                        child: TextFormField(
                                                                                          controller: textController3,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintText: 'Enter your PAN number',
                                                                                            hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                          ),
                                                                                          textAlign: TextAlign.start,
                                                                                          validator: (val) {
                                                                                            if (val.isEmpty) {
                                                                                              return 'This Field Is required';
                                                                                            }
                                                                                            if (val.length < 10) {
                                                                                              return 'Please Enter a valid PAN number';
                                                                                            }
                                                                                            return null;
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                                child: Text(
                                                                                  'Mobile number:',
                                                                                  style: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                4,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 50,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFEEEEEE),
                                                                                        borderRadius: BorderRadius.circular(25),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: Alignment(0, 0.5),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                          child: TextFormField(
                                                                                            controller: textController4,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'Update your mobile number',
                                                                                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                                fontFamily: 'Poppins',
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
                                                                                            ),
                                                                                            textAlign: TextAlign.start,
                                                                                            validator: (val) {
                                                                                              if (val.isEmpty) {
                                                                                                return 'This Field Is required';
                                                                                              }
                                                                                              if (val.length < 10) {
                                                                                                return 'Please Enter a valid PAN number';
                                                                                              }
                                                                                              return null;
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
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
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              45,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Phone number:',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: Alignment(0, 0.5),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                child: TextFormField(
                                                                                  controller: textController5,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintText: 'Update your phone number',
                                                                                    hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Poppins',
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
                                                                                  ),
                                                                                  style: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  keyboardType: TextInputType.phone,
                                                                                  validator: (val) {
                                                                                    if (val.isEmpty) {
                                                                                      return 'This Field Is required';
                                                                                    }
                                                                                    if (val.length < 10) {
                                                                                      return 'Please Enter a Valid Phone Number';
                                                                                    }
                                                                                    return null;
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Nationality:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: Alignment(0, 0.5),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                        child: TextFormField(
                                                                                          controller: textController6,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintText: 'Enter your nationality',
                                                                                            hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                          ),
                                                                                          textAlign: TextAlign.start,
                                                                                          validator: (val) {
                                                                                            if (val.isEmpty) {
                                                                                              return 'This Field Is required';
                                                                                            }
                                                                                            if (val.length < 10) {
                                                                                              return 'Please Enter a valid PAN number';
                                                                                            }
                                                                                            return null;
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'State:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: Alignment(0, 0.5),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                        child: TextFormField(
                                                                                          controller: textController7,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintText: 'Enter your current address',
                                                                                            hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                          ),
                                                                                          textAlign: TextAlign.start,
                                                                                          keyboardType: TextInputType.streetAddress,
                                                                                          validator: (val) {
                                                                                            if (val.isEmpty) {
                                                                                              return 'This Field Is required';
                                                                                            }
                                                                                            if (val.length < 10) {
                                                                                              return 'Please Enter a valid PAN number';
                                                                                            }
                                                                                            return null;
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Current address:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: Alignment(0, 0.5),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                        child: TextFormField(
                                                                                          controller: textController8,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            hintText: 'Enter your permanent address',
                                                                                            hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                              fontFamily: 'Poppins',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                          ),
                                                                                          textAlign: TextAlign.start,
                                                                                          keyboardType: TextInputType.streetAddress,
                                                                                          validator: (val) {
                                                                                            if (val.isEmpty) {
                                                                                              return 'This Field Is required';
                                                                                            }
                                                                                            if (val.length < 10) {
                                                                                              return 'Requires at least 10 characters.';
                                                                                            }
                                                                                            return null;
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                45,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              'Permanent address:',
                                                                              style: FlutterFlowTheme.bodyText1.override(
                                                                                fontFamily: 'Poppins',
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xFFEEEEEE),
                                                                                    borderRadius: BorderRadius.circular(25),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: Alignment(0, 0.5),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                      child: TextFormField(
                                                                                        controller: textController9,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Enter your current address',
                                                                                          hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
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
                                                                                        ),
                                                                                        style: FlutterFlowTheme.bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                        ),
                                                                                        textAlign: TextAlign.start,
                                                                                        keyboardType: TextInputType.streetAddress,
                                                                                        validator: (val) {
                                                                                          if (val.isEmpty) {
                                                                                            return 'This Field Is required';
                                                                                          }
                                                                                          if (val.length < 10) {
                                                                                            return 'Please Enter a valid PAN number';
                                                                                          }
                                                                                          return null;
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              45,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Describe yourself:',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                100,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: Alignment(0, -1),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                child: TextFormField(
                                                                                  controller: textController10,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintText: 'Please introduce yourself',
                                                                                    hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Poppins',
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
                                                                                  ),
                                                                                  style: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  maxLines: 10,
                                                                                  keyboardType: TextInputType.multiline,
                                                                                  validator: (val) {
                                                                                    if (val.isEmpty) {
                                                                                      return 'This Field Is required';
                                                                                    }
                                                                                    if (val.length < 10) {
                                                                                      return 'Please Enter a Valid Phone Number';
                                                                                    }
                                                                                    return null;
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Category:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                      child: FlutterFlowDropDown(
                                                                                        options: [
                                                                                          'General',
                                                                                          'SC',
                                                                                          'ST',
                                                                                          'OBC'
                                                                                        ],
                                                                                        onChanged: (value) {
                                                                                          setState(() => categoryValue = value);
                                                                                        },
                                                                                        width: 130,
                                                                                        height: 40,
                                                                                        textStyle: FlutterFlowTheme.bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: Colors.black,
                                                                                        ),
                                                                                        fillColor: Color(0xFFEEEEEE),
                                                                                        elevation: 2,
                                                                                        borderColor: Colors.transparent,
                                                                                        borderWidth: 0,
                                                                                        borderRadius: 0,
                                                                                        margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                                                                              child: Text(
                                                                                'Date of birth:',
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 50,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFEEEEEE),
                                                                                      borderRadius: BorderRadius.circular(25),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                      child: TextFormField(
                                                                                        controller: textController11,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Enter Your date of birth',
                                                                                          hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                            fontFamily: 'Poppins',
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
                                                                                        ),
                                                                                        style: FlutterFlowTheme.bodyText1.override(
                                                                                          fontFamily: 'Poppins',
                                                                                        ),
                                                                                        keyboardType: TextInputType.datetime,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
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
                                                      )
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment(0, 0.95),
                                                    child: SmoothPageIndicator(
                                                      controller:
                                                          pageViewController,
                                                      count: 3,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) {
                                                        pageViewController
                                                            .animateToPage(
                                                          i,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      effect:
                                                          ExpandingDotsEffect(
                                                        expansionFactor: 2,
                                                        spacing: 8,
                                                        radius: 16,
                                                        dotWidth: 8,
                                                        dotHeight: 8,
                                                        dotColor:
                                                            Color(0xFF9E9E9E),
                                                        activeDotColor:
                                                            Color(0xFFFD0002),
                                                        paintStyle:
                                                            PaintingStyle
                                                                .stroke,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              alignment: Alignment(0, 0),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 15, 0, 60),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(45, 0,
                                                                    0, 0),
                                                            child: Text(
                                                              'Qualification/Degree:',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText1
                                                                      .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 4, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFEEEEEE),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment(
                                                                            0,
                                                                            0.5),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              20,
                                                                              0,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            textController12,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Enter your qualification',
                                                                          hintStyle: FlutterFlowTheme
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                          ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        validator:
                                                                            (val) {
                                                                          if (val
                                                                              .isEmpty) {
                                                                            return 'This Field Is required';
                                                                          }
                                                                          if (val.length <
                                                                              10) {
                                                                            return 'Please Enter a Valid Phone Number';
                                                                          }
                                                                          return null;
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            45,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'College/University/Institute',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFEEEEEE),
                                                                            borderRadius:
                                                                                BorderRadius.circular(25),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                20,
                                                                                0,
                                                                                20,
                                                                                0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: textController13,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter your college or university name',
                                                                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
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
                                                                              ),
                                                                              style: FlutterFlowTheme.bodyText1.override(
                                                                                fontFamily: 'Poppins',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            45,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Attended in year:',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFEEEEEE),
                                                                            borderRadius:
                                                                                BorderRadius.circular(25),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                Alignment(0, 0.5),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                              child: TextFormField(
                                                                                controller: textController14,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  hintText: 'Enter the year you finished your degree',
                                                                                  hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
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
                                                                                ),
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                keyboardType: TextInputType.datetime,
                                                                                validator: (val) {
                                                                                  if (val.isEmpty) {
                                                                                    return 'This Field Is required';
                                                                                  }
                                                                                  if (val.length < 12) {
                                                                                    return 'Please enter a valid Aadhar number';
                                                                                  }
                                                                                  return null;
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            45,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Percentage/CGPA:',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            25,
                                                                            0,
                                                                            25,
                                                                            0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              50,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFEEEEEE),
                                                                            borderRadius:
                                                                                BorderRadius.circular(25),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                Alignment(0, 0.5),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                              child: TextFormField(
                                                                                controller: textController15,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  hintText: 'Enter Your Percentage or CGPA score',
                                                                                  hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
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
                                                                                ),
                                                                                style: FlutterFlowTheme.bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                keyboardType: TextInputType.number,
                                                                                validator: (val) {
                                                                                  if (val.isEmpty) {
                                                                                    return 'This Field Is required';
                                                                                  }
                                                                                  if (val.length < 10) {
                                                                                    return 'Please Enter a valid PAN number';
                                                                                  }
                                                                                  return null;
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(0, 10,
                                                                    0, 0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              45,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Specialization:',
                                                                        style: FlutterFlowTheme
                                                                            .bodyText1
                                                                            .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEEEEEE),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: Alignment(0, 0.5),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                                child: TextFormField(
                                                                                  controller: textController16,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    hintText: 'Enter the field you specialize in',
                                                                                    hintStyle: FlutterFlowTheme.bodyText1.override(
                                                                                      fontFamily: 'Poppins',
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
                                                                                  ),
                                                                                  style: FlutterFlowTheme.bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                  ),
                                                                                  textAlign: TextAlign.start,
                                                                                  validator: (val) {
                                                                                    if (val.isEmpty) {
                                                                                      return 'This Field Is required';
                                                                                    }
                                                                                    if (val.length < 10) {
                                                                                      return 'Please Enter a valid PAN number';
                                                                                    }
                                                                                    return null;
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
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
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    StreamBuilder<List<PersonalinfoRecord>>(
                      stream: queryPersonalinfoRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(child: CircularProgressIndicator());
                        }
                        List<PersonalinfoRecord> buttonPersonalinfoRecordList =
                            snapshot.data;
                        // Customize what your widget looks like with no query results.
                        if (snapshot.data.isEmpty) {
                          return Container(
                            height: 100,
                            child: Center(
                              child: Text('No results.'),
                            ),
                          );
                        }
                        final buttonPersonalinfoRecord =
                            buttonPersonalinfoRecordList.first;
                        return Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 60),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.topToBottom,
                                  duration: Duration(milliseconds: 400),
                                  reverseDuration: Duration(milliseconds: 400),
                                  child: NavBarPage(initialPage: 'HomePage'),
                                ),
                              );
                              final gender = genderValue;
                              final name = currentUserDisplayName;
                              final aadhaarnum = textController2.text;
                              final pannum = textController3.text;
                              final mobileNumber = currentUserReference;

                              final personalinfoRecordData =
                                  createPersonalinfoRecordData(
                                gender: gender,
                                name: name,
                                aadhaarnum: aadhaarnum,
                                pannum: pannum,
                                mobileNumber: mobileNumber,
                              );

                              await PersonalinfoRecord.collection
                                  .doc()
                                  .set(personalinfoRecordData);
                            },
                            text: 'Save & Skip',
                            options: FFButtonOptions(
                              width: 180,
                              height: 40,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              elevation: 10,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
