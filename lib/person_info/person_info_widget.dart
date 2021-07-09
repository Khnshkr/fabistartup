import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../login/login_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PersonInfoWidget extends StatefulWidget {
  PersonInfoWidget({
    Key key,
    this.userinfo,
  }) : super(key: key);

  final UsersRecord userinfo;

  @override
  _PersonInfoWidgetState createState() => _PersonInfoWidgetState();
}

class _PersonInfoWidgetState extends State<PersonInfoWidget> {
  String categorydropValue;
  TextEditingController textController10;
  String genderdropValue;
  String uploadedFileUrl = '';
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
  TextEditingController textController11;
  TextEditingController textController12;
  TextEditingController textController13;
  TextEditingController textController14;
  TextEditingController textController15;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: widget.userinfo.displayName);
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController(text: widget.userinfo.phoneNumber);
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
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: StreamBuilder<UsersRecord>(
        stream: UsersRecord.getDocument(currentUserReference),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final personInfoUsersRecord = snapshot.data;
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.primaryColor,
              automaticallyImplyLeading: true,
              title: Text(
                'Personal Info',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: InkWell(
                    onTap: () async {
                      await signOut();
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Icon(
                      Icons.logout,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                  ),
                )
              ],
              centerTitle: true,
              elevation: 4,
            ),
            body: SafeArea(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.primaryColor,
                      indicatorColor: FlutterFlowTheme.secondaryColor,
                      tabs: [
                        Tab(
                          text: 'Personal info',
                          icon: Icon(
                            Icons.person,
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
                            height: 500,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                                  child: PageView(
                                    controller: pageViewController,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 8, 0, 0),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 80,
                                                  child: Stack(
                                                    alignment: Alignment(0, 0),
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          final selectedMedia =
                                                              await selectMedia();
                                                          if (selectedMedia !=
                                                                  null &&
                                                              validateFileFormat(
                                                                  selectedMedia
                                                                      .storagePath,
                                                                  context)) {
                                                            showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true);
                                                            final downloadUrl =
                                                                await uploadData(
                                                                    selectedMedia
                                                                        .storagePath,
                                                                    selectedMedia
                                                                        .bytes);
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            if (downloadUrl !=
                                                                null) {
                                                              setState(() =>
                                                                  uploadedFileUrl =
                                                                      downloadUrl);
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload media');
                                                            }
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 120,
                                                          height: 120,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            personInfoUsersRecord
                                                                .photoUrl,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment(0, 0),
                                                        child: Icon(
                                                          Icons.camera_alt,
                                                          color:
                                                              Color(0xBFFFFFFF),
                                                          size: 24,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 16, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Personal info',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            Color(0xFF0D1724),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: StreamBuilder<
                                                            List<UsersRecord>>(
                                                          stream:
                                                              queryUsersRecord(
                                                            singleRecord: true,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                  child:
                                                                      CircularProgressIndicator());
                                                            }
                                                            List<UsersRecord>
                                                                textFieldUsersRecordList =
                                                                snapshot.data;
                                                            // Customize what your widget looks like with no query results.
                                                            if (snapshot
                                                                .data.isEmpty) {
                                                              return Container(
                                                                height: 100,
                                                                child: Center(
                                                                  child: Text(
                                                                      'No results.'),
                                                                ),
                                                              );
                                                            }
                                                            final textFieldUsersRecord =
                                                                textFieldUsersRecordList
                                                                    .first;
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    textController1,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Update  name',
                                                                  labelStyle: FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFF8B97A2),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              4.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              4.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .name,
                                                                validator:
                                                                    (val) {
                                                                  if (val
                                                                      .isEmpty) {
                                                                    return 'Name is required';
                                                                  }
                                                                  if (val.length <
                                                                      3) {
                                                                    return 'Requires at least 3 characters.';
                                                                  }
                                                                  return null;
                                                                },
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                1, 0, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Gender:',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme
                                                                    .subtitle1
                                                                    .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          1,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowDropDown(
                                                                options: [
                                                                  'Male',
                                                                  'Female',
                                                                  'Other/Non-binary'
                                                                ],
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      genderdropValue =
                                                                          value);
                                                                },
                                                                width: 330,
                                                                height: 60,
                                                                textStyle:
                                                                    FlutterFlowTheme
                                                                        .bodyText1
                                                                        .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                fillColor:
                                                                    FlutterFlowTheme
                                                                        .tertiaryColor,
                                                                elevation: 2,
                                                                borderColor: Color(
                                                                    0xFFE6E6E6),
                                                                borderWidth: 0,
                                                                borderRadius: 8,
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        8,
                                                                        4,
                                                                        8,
                                                                        4),
                                                                hidesUnderline:
                                                                    true,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController2,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Aadhaar Number',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'aadhar number is required';
                                                              }
                                                              if (val.length <
                                                                  12) {
                                                                return 'aadhar number must be 12 digits';
                                                              }
                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController3,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'PAN number',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'PAN number is required';
                                                              }
                                                              if (val.length <
                                                                  10) {
                                                                return 'PAN number must be 10 digits long';
                                                              }
                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: StreamBuilder<
                                                            List<UsersRecord>>(
                                                          stream:
                                                              queryUsersRecord(
                                                            singleRecord: true,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                  child:
                                                                      CircularProgressIndicator());
                                                            }
                                                            List<UsersRecord>
                                                                textFieldUsersRecordList =
                                                                snapshot.data;
                                                            // Customize what your widget looks like with no query results.
                                                            if (snapshot
                                                                .data.isEmpty) {
                                                              return Container(
                                                                height: 100,
                                                                child: Center(
                                                                  child: Text(
                                                                      'No results.'),
                                                                ),
                                                              );
                                                            }
                                                            final textFieldUsersRecord =
                                                                textFieldUsersRecordList
                                                                    .first;
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    textController4,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Phone number',
                                                                  labelStyle: FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFF8B97A2),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              4.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              4.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              4.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .phone,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(0.95, 0),
                                                child: StreamBuilder<
                                                    List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                          child:
                                                              CircularProgressIndicator());
                                                    }
                                                    List<UsersRecord>
                                                        buttonUsersRecordList =
                                                        snapshot.data;
                                                    // Customize what your widget looks like with no query results.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container(
                                                        height: 100,
                                                        child: Center(
                                                          child: Text(
                                                              'No results.'),
                                                        ),
                                                      );
                                                    }
                                                    final buttonUsersRecord =
                                                        buttonUsersRecordList
                                                            .first;
                                                    return Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 16, 0, 0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          if (!formKey
                                                              .currentState
                                                              .validate()) {
                                                            return;
                                                          }
                                                          await pageViewController
                                                              .nextPage(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    300),
                                                            curve: Curves.ease,
                                                          );
                                                          final usersUpdateData =
                                                              createUsersRecordData(
                                                            displayName:
                                                                textController1
                                                                    .text,
                                                            phoneNumber:
                                                                textController4
                                                                    .text,
                                                            gender:
                                                                genderdropValue,
                                                            aadhaarNum:
                                                                textController2
                                                                    .text,
                                                            panNum:
                                                                textController3
                                                                    .text,
                                                            photoUrl:
                                                                uploadedFileUrl,
                                                          );
                                                          await personInfoUsersRecord
                                                              .reference
                                                              .update(
                                                                  usersUpdateData);
                                                        },
                                                        text: 'Continue',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 140,
                                                          height: 60,
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          textStyle:
                                                              FlutterFlowTheme
                                                                  .subtitle2
                                                                  .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                          elevation: 2,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 2,
                                                          ),
                                                          borderRadius: 8,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 16, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Personal info',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            Color(0xFF0D1724),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController5,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Nationality',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .name,
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'Name is required';
                                                              }

                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController6,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'State',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .name,
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'Name is required';
                                                              }

                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController7,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Current Address',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .streetAddress,
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'aadhar number is required';
                                                              }

                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController8,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Permanent Address',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .streetAddress,
                                                            validator: (val) {
                                                              if (val.isEmpty) {
                                                                return 'aadhar number is required';
                                                              }

                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController9,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Date of birth',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .datetime,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(0.95, 0),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 16, 0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      if (!formKey.currentState
                                                          .validate()) {
                                                        return;
                                                      }
                                                      await pageViewController
                                                          .nextPage(
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                        curve: Curves.ease,
                                                      );
                                                      final usersUpdateData =
                                                          createUsersRecordData(
                                                        nationality:
                                                            textController5
                                                                .text,
                                                        state: textController6
                                                            .text,
                                                        currentAdd:
                                                            textController7
                                                                .text,
                                                        permAddress:
                                                            textController8
                                                                .text,
                                                        dateOfBirth:
                                                            textController9
                                                                .text,
                                                      );
                                                      await personInfoUsersRecord
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    text: 'Continue',
                                                    options: FFButtonOptions(
                                                      width: 140,
                                                      height: 60,
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                      elevation: 2,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 2,
                                                      ),
                                                      borderRadius: 8,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 16, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Personal info',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            Color(0xFF0D1724),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 330,
                                                        height: 120,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFE6E6E6),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  16, 0, 0, 0),
                                                          child: TextFormField(
                                                            controller:
                                                                textController10,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Describe yourself',
                                                              labelStyle:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    const BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          4.0),
                                                                ),
                                                              ),
                                                            ),
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: Color(
                                                                  0xFF8B97A2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .multiline,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  8, 0, 0, 0),
                                                          child: Text(
                                                            'Category:',
                                                            textAlign:
                                                                TextAlign.start,
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
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 8, 0, 0),
                                                child: FlutterFlowDropDown(
                                                  initialOption: 'General ',
                                                  options: [
                                                    'General ',
                                                    'SC/ST',
                                                    'OBC'
                                                  ],
                                                  onChanged: (value) {
                                                    setState(() =>
                                                        categorydropValue =
                                                            value);
                                                  },
                                                  width: 330,
                                                  height: 60,
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  fillColor: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  elevation: 2,
                                                  borderColor:
                                                      Color(0xFFE6E6E6),
                                                  borderWidth: 0,
                                                  borderRadius: 8,
                                                  margin: EdgeInsets.fromLTRB(
                                                      8, 4, 8, 4),
                                                  hidesUnderline: true,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment(0.95, 0),
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 16, 0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      final usersUpdateData =
                                                          createUsersRecordData(
                                                        describeSelf:
                                                            textController10
                                                                .text,
                                                        category:
                                                            categorydropValue,
                                                      );
                                                      await personInfoUsersRecord
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Success'),
                                                            content: Text(
                                                                'Your profile has been saved!'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                    text: 'Save',
                                                    options: FFButtonOptions(
                                                      width: 140,
                                                      height: 60,
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme
                                                              .subtitle2
                                                              .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                      elevation: 2,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 2,
                                                      ),
                                                      borderRadius: 8,
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
                                ),
                                Align(
                                  alignment: Alignment(0, 1),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: SmoothPageIndicator(
                                      controller: pageViewController,
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        pageViewController.animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
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
                                            FlutterFlowTheme.primaryColor,
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Educational Info',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF0D1724),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 330,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFFE6E6E6),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController11,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Qualification / Degree :',
                                                  labelStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 330,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFFE6E6E6),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController12,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'College / University / Institute :',
                                                  labelStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 330,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFFE6E6E6),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController13,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Attended in year :',
                                                  labelStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 330,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFFE6E6E6),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController14,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Percentage / CGPA : ',
                                                  labelStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 330,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFFE6E6E6),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController15,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Specialization : ',
                                                  labelStyle: FlutterFlowTheme
                                                      .bodyText2
                                                      .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF8B97A2),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
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
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.95, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final usersUpdateData =
                                              createUsersRecordData(
                                            qualification:
                                                textController11.text,
                                            college: textController12.text,
                                            attndYear: int.parse(
                                                textController13.text),
                                            percentage: textController14.text,
                                            specialization:
                                                textController15.text,
                                          );
                                          await personInfoUsersRecord.reference
                                              .update(usersUpdateData);
                                        },
                                        text: 'Continue',
                                        options: FFButtonOptions(
                                          width: 140,
                                          height: 60,
                                          color: FlutterFlowTheme.primaryColor,
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          elevation: 2,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2,
                                          ),
                                          borderRadius: 8,
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
                    ),
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
