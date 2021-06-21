import '../auth/auth_util.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController;
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: currentUserDisplayName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xC3CC0808),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia();
                                      if (selectedMedia != null &&
                                          validateFileFormat(
                                              selectedMedia.storagePath,
                                              context)) {
                                        showUploadMessage(
                                            context, 'Uploading file...',
                                            showLoading: true);
                                        final downloadUrl = await uploadData(
                                            selectedMedia.storagePath,
                                            selectedMedia.bytes);
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        if (downloadUrl != null) {
                                          setState(() =>
                                              uploadedFileUrl = downloadUrl);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        currentUserPhoto,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'User.name@domainname.com',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 12, 0, 12),
                      child: Text(
                        'Profile Update',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(),
                    child: DefaultTabController(
                      length: 3,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: Color(0xFF030303),
                            unselectedLabelColor: Color(0xFF716C6C),
                            indicatorColor: FlutterFlowTheme.secondaryColor,
                            tabs: [
                              Tab(
                                text: 'User Profile',
                              ),
                              Tab(
                                text: 'Education Qualification',
                              ),
                              Tab(
                                text: 'Buisness Info',
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 50),
                                        child: PageView(
                                          controller: pageViewController,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: TextFormField(
                                                        controller:
                                                            textController,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              ' Update your name',
                                                          labelStyle:
                                                              FlutterFlowTheme
                                                                  .bodyText1
                                                                  .override(
                                                            fontFamily:
                                                                'Poppins',
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
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                        ),
                                                        keyboardType:
                                                            TextInputType.name,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [],
                                                )
                                              ],
                                            ),
                                            Image.network(
                                              'https://picsum.photos/seed/137/600',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.network(
                                              'https://picsum.photos/seed/20/600',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0, 1),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: SmoothPageIndicator(
                                            controller: pageViewController,
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) {
                                              pageViewController.animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: ExpandingDotsEffect(
                                              expansionFactor: 2,
                                              spacing: 8,
                                              radius: 16,
                                              dotWidth: 6,
                                              dotHeight: 6,
                                              dotColor: Color(0xFF9E9E9E),
                                              activeDotColor:
                                                  FlutterFlowTheme.customColor1,
                                              paintStyle: PaintingStyle.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Tab View 2',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  'Tab View 3',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 32,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await signOut();
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Log Out',
                          options: FFButtonOptions(
                            width: 90,
                            height: 40,
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
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
    );
  }
}
