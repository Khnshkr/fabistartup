import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuisnessinfoWidget extends StatefulWidget {
  BuisnessinfoWidget({Key key}) : super(key: key);

  @override
  _BuisnessinfoWidgetState createState() => _BuisnessinfoWidgetState();
}

class _BuisnessinfoWidgetState extends State<BuisnessinfoWidget> {
  String dropDownValue1;
  TextEditingController textController1;
  String dropDownValue2;
  TextEditingController textController2;
  TextEditingController textController3;
  String dropDownValue3;
  final pageViewController = PageController();
  String dropDownValue4;
  String dropDownValue5;
  TextEditingController textController4;
  TextEditingController textController5;
  TextEditingController textController6;
  TextEditingController textController7;
  String dropDownValue6;
  String dropDownValue7;
  TextEditingController textController8;
  TextEditingController textController9;
  TextEditingController textController10;
  TextEditingController textController11;
  TextEditingController textController12;
  TextEditingController textController13;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
    textController8 = TextEditingController();
    textController9 = TextEditingController();
    textController10 = TextEditingController();
    textController11 = TextEditingController();
    textController12 = TextEditingController();
    textController13 = TextEditingController();
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
                            'Business Info',
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 550,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: DefaultTabController(
                        length: 1,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor: FlutterFlowTheme.primaryColor,
                              indicatorColor: FlutterFlowTheme.secondaryColor,
                              tabs: [
                                Tab(
                                  text: 'Buisness info',
                                  icon: Icon(
                                    Icons.business_sharp,
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 450,
                                    child: Stack(
                                      children: [
                                        PageView(
                                          controller: pageViewController,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 0),
                                                child: SingleChildScrollView(
                                                  primary: false,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    8, 0, 0, 0),
                                                            child: Text(
                                                              'Basic Buisness info:',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .subtitle1
                                                                      .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.5,
                                                        color:
                                                            Color(0xFF716C6C),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(45, 0,
                                                                    0, 0),
                                                            child: Text(
                                                              'Startup name:',
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
                                                                            textController1,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Enter your startup name',
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'Buisness model:',
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
                                                                                FlutterFlowDropDown(
                                                                              options: [
                                                                                'Manufacturing',
                                                                                'Retail',
                                                                                'Service'
                                                                              ],
                                                                              onChanged: (value) {
                                                                                setState(() => dropDownValue1 = value);
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'Business entity type:',
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
                                                                                FlutterFlowDropDown(
                                                                              options: [
                                                                                'Proprietor',
                                                                                'Partnership',
                                                                                'LLP'
                                                                              ],
                                                                              onChanged: (value) {
                                                                                setState(() => dropDownValue2 = value);
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
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'No. of Founders:',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            60,
                                                                            0,
                                                                            20,
                                                                            0),
                                                                    child: Text(
                                                                      'Company Ownership:',
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
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                          alignment: Alignment(
                                                                              0,
                                                                              0.5),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                20,
                                                                                0,
                                                                                20,
                                                                                0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: textController2,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter # here',
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
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                            controller:
                                                                                textController3,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              hintText: '% of Holding',
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
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Poppins',
                                                                            ),
                                                                            keyboardType:
                                                                                TextInputType.number,
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
                                                                        'Industry sector:',
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
                                                                                Padding(
                                                                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                              child: FlutterFlowDropDown(
                                                                                options: [
                                                                                  'Agriculture & Forestry',
                                                                                  'Auto Components',
                                                                                  'Automobile',
                                                                                  'Aviation',
                                                                                  'BFSI – Fintech & Financial Services',
                                                                                  'Biotechnology',
                                                                                  'Capital Goods',
                                                                                  'Chemicals',
                                                                                  'Construction',
                                                                                  'Defence Manufacturing',
                                                                                  'Electronic Systems',
                                                                                  'Food Processing',
                                                                                  'Healthcare',
                                                                                  'IT & BPM',
                                                                                  'Leather',
                                                                                  'Media',
                                                                                  'Medical Devices',
                                                                                  'Metals & Mining',
                                                                                  'Oil & Gas',
                                                                                  'Pharmaceuticals',
                                                                                  'Ports & Shipping',
                                                                                  'Railways',
                                                                                  'Renewable Energy',
                                                                                  'Retail & E-commerce',
                                                                                  'Roads & Highways',
                                                                                  'Telecom',
                                                                                  'Textiles & Apparel',
                                                                                  'Thermal Power',
                                                                                  'Tourism & Hospitality'
                                                                                ],
                                                                                onChanged: (value) {
                                                                                  setState(() => dropDownValue3 = value);
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
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 0),
                                                child: SingleChildScrollView(
                                                  primary: false,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    8, 0, 0, 0),
                                                            child: Text(
                                                              'Registration details:',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .subtitle1
                                                                      .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.5,
                                                        color:
                                                            Color(0xFF716C6C),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(45, 0,
                                                                    0, 0),
                                                            child: Text(
                                                              'Business PAN:',
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
                                                                            textController4,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Enter your business PAN number',
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'Business CIN:',
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
                                                                              controller: textController5,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter your business CIN',
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'GST number:',
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
                                                                              controller: textController6,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter your business GST number',
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
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                            20,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'MSME registration Status',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            25,
                                                                            0,
                                                                            20,
                                                                            0),
                                                                    child: Text(
                                                                      'IPR Status::',
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
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                              FlutterFlowDropDown(
                                                                            options: [
                                                                              'Not Registered',
                                                                              'Registered'
                                                                            ],
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() => dropDownValue4 = value);
                                                                            },
                                                                            width:
                                                                                130,
                                                                            height:
                                                                                40,
                                                                            textStyle:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.black,
                                                                            ),
                                                                            fillColor:
                                                                                Color(0xFFEEEEEE),
                                                                            elevation:
                                                                                2,
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderWidth:
                                                                                0,
                                                                            borderRadius:
                                                                                0,
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                8,
                                                                                4,
                                                                                8,
                                                                                4),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                              FlutterFlowDropDown(
                                                                            options: [
                                                                              'No IPR',
                                                                              'Copyright',
                                                                              'Trademark',
                                                                              'Patent'
                                                                            ],
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() => dropDownValue5 = value);
                                                                            },
                                                                            width:
                                                                                130,
                                                                            height:
                                                                                40,
                                                                            textStyle:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.black,
                                                                            ),
                                                                            fillColor:
                                                                                Color(0xFFEEEEEE),
                                                                            elevation:
                                                                                2,
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderWidth:
                                                                                0,
                                                                            borderRadius:
                                                                                0,
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                8,
                                                                                4,
                                                                                8,
                                                                                4),
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
                                                                        'Licenses:',
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
                                                                                Padding(
                                                                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                                                              child: TextFormField(
                                                                                controller: textController7,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  hintText: 'Enter licenses owned',
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
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 0),
                                                child: SingleChildScrollView(
                                                  primary: false,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    8, 0, 0, 0),
                                                            child: Text(
                                                              'Products / Services/Market:',
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .subtitle1
                                                                      .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.5,
                                                        color:
                                                            Color(0xFF716C6C),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(45, 0,
                                                                    0, 0),
                                                            child: Text(
                                                              'No. of products:',
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
                                                                            textController8,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Enter the # of products in your startup',
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
                                                                        keyboardType:
                                                                            TextInputType.number,
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
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                    child: Text(
                                                                      'Product description:',
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
                                                                              100,
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
                                                                              controller: textController9,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter list of Products',
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
                                                                              keyboardType: TextInputType.multiline,
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
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
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
                                                                            15,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Market Analysis Summary:',
                                                                      style: FlutterFlowTheme
                                                                          .bodyText1
                                                                          .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            15,
                                                                            0,
                                                                            20,
                                                                            0),
                                                                    child: Text(
                                                                      'Market Segmentation:',
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
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                              FlutterFlowDropDown(
                                                                            options: [
                                                                              'Lower Class',
                                                                              'Middle Class',
                                                                              'Premium'
                                                                            ],
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() => dropDownValue6 = value);
                                                                            },
                                                                            width:
                                                                                130,
                                                                            height:
                                                                                40,
                                                                            textStyle:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.black,
                                                                            ),
                                                                            fillColor:
                                                                                Color(0xFFEEEEEE),
                                                                            elevation:
                                                                                2,
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderWidth:
                                                                                0,
                                                                            borderRadius:
                                                                                0,
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                8,
                                                                                4,
                                                                                8,
                                                                                4),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              20,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            150,
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
                                                                              FlutterFlowDropDown(
                                                                            options: [
                                                                              'Individual (Retail)',
                                                                              'Corporate',
                                                                              'Other'
                                                                            ],
                                                                            onChanged:
                                                                                (value) {
                                                                              setState(() => dropDownValue7 = value);
                                                                            },
                                                                            width:
                                                                                130,
                                                                            height:
                                                                                40,
                                                                            textStyle:
                                                                                FlutterFlowTheme.bodyText1.override(
                                                                              fontFamily: 'Poppins',
                                                                              color: Colors.black,
                                                                            ),
                                                                            fillColor:
                                                                                Color(0xFFEEEEEE),
                                                                            elevation:
                                                                                2,
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderWidth:
                                                                                0,
                                                                            borderRadius:
                                                                                0,
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                8,
                                                                                4,
                                                                                8,
                                                                                4),
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
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: SingleChildScrollView(
                                                primary: false,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  8, 0, 0, 0),
                                                          child: Text(
                                                            'Revenue/Pricing:',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .subtitle1
                                                                    .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Divider(
                                                      thickness: 1.5,
                                                      color: Color(0xFF716C6C),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  45, 0, 0, 0),
                                                          child: Text(
                                                            'Sales Strategy:',
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
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 50,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFEEEEEE),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
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
                                                                          textController10,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            'Customer Centric Service/Uniqeness of Product/Service',
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
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          borderRadius:
                                                                              const BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(4.0),
                                                                            topRight:
                                                                                Radius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1,
                                                                          ),
                                                                          borderRadius:
                                                                              const BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(4.0),
                                                                            topRight:
                                                                                Radius.circular(4.0),
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
                                                                          TextAlign
                                                                              .start,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .multiline,
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
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 10, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
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
                                                                  child: Text(
                                                                    'Sales Forecast:',
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
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
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
                                                                            controller:
                                                                                textController11,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              hintText: 'Projected Average monthly sale',
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
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
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
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 10, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
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
                                                                  child: Text(
                                                                    'Average unit price:',
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
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              25,
                                                                              0,
                                                                              25,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
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
                                                                            controller:
                                                                                textController12,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              hintText: 'Enter your average unit price',
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
                                                                            style:
                                                                                FlutterFlowTheme.bodyText1.override(
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
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                      ),
                                                      child: Container(
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
                                                                      'Location & Facilities:',
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
                                                                                hintText: 'Current location/Geographical expansion',
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
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment(0, 1),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            child: SmoothPageIndicator(
                                              controller: pageViewController,
                                              count: 4,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) {
                                                pageViewController
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: ExpandingDotsEffect(
                                                expansionFactor: 2,
                                                spacing: 8,
                                                radius: 16,
                                                dotWidth: 8,
                                                dotHeight: 8,
                                                dotColor: Color(0xFF9E9E9E),
                                                activeDotColor:
                                                    Color(0xFFFD0002),
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 60),
                child: FFButtonWidget(
                  onPressed: () async {
                    final usersRecordData = createUsersRecordData();

                    await currentUserReference.update(usersRecordData);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
