import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
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
  String buisnessentitydropValue;
  String buisnessmodeldropValue;
  TextEditingController startupnameController;
  TextEditingController nooffoundersController;
  TextEditingController buisnessownershipController;
  String industrysectordropValue;
  final pageViewController = PageController();
  String iprdropValue;
  String msmeregdropValue;
  TextEditingController buisnessinputController;
  TextEditingController buisnesspanController;
  TextEditingController gstnumberController;
  TextEditingController licencesController;
  String marketsegmentdropValue;
  String masdropValue;
  TextEditingController noofproductsController;
  TextEditingController productdescriptionController;
  TextEditingController avgunitpriceController;
  TextEditingController salesforecastController;
  TextEditingController salesstratergyController;
  TextEditingController locationfacilitiesController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    avgunitpriceController = TextEditingController();
    salesforecastController = TextEditingController();
    salesstratergyController = TextEditingController();
    locationfacilitiesController = TextEditingController();
    buisnessinputController = TextEditingController();
    buisnesspanController = TextEditingController();
    gstnumberController = TextEditingController();
    licencesController = TextEditingController();
    buisnessownershipController = TextEditingController();
    nooffoundersController = TextEditingController();
    startupnameController = TextEditingController();
    noofproductsController = TextEditingController();
    productdescriptionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<BuisnessinfoRecord>>(
      stream: queryBuisnessinfoRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<BuisnessinfoRecord> buisnessinfoBuisnessinfoRecordList =
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
        final buisnessinfoBuisnessinfoRecord =
            buisnessinfoBuisnessinfoRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              'Buisness Info',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.tertiaryColor,
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: 650,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: PageView(
                      controller: pageViewController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Basic Buisness Info',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                                              controller: startupnameController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Startup name',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                            child: FlutterFlowDropDown(
                                              options: [
                                                'Buisness Model:',
                                                'Manufacturing',
                                                'Service',
                                                'Service'
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                    buisnessmodeldropValue =
                                                        value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
                                              hidesUnderline: true,
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
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Color(0xFFE6E6E6),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                16, 0, 0, 0),
                                            child: FlutterFlowDropDown(
                                              options: [
                                                'Buisness Entity Type:',
                                                'Proprietor',
                                                'Partnership',
                                                'LLP'
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                    buisnessentitydropValue =
                                                        value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
                                              hidesUnderline: true,
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
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xFFE6E6E6),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                16, 0, 0, 0),
                                            child: TextFormField(
                                              controller:
                                                  nooffoundersController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'No. of Founders',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                              controller:
                                                  buisnessownershipController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Company Ownership:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                            child: FlutterFlowDropDown(
                                              initialOption: 'Industry Sector:',
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
                                                'Tourism & Hospitality',
                                                'Industry Sector:',
                                                'Other'
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                    industrysectordropValue =
                                                        value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
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
                                        final buisnessinfoUpdateData =
                                            createBuisnessinfoRecordData(
                                          buisnessName:
                                              startupnameController.text,
                                          buisnessModel: buisnessmodeldropValue,
                                          buisnessEntity:
                                              buisnessentitydropValue,
                                          noOfFounders: int.parse(
                                              nooffoundersController.text),
                                          ownership: int.parse(
                                              buisnessownershipController.text),
                                          buisnessSector:
                                              industrysectordropValue,
                                          user: currentUserReference,
                                        );
                                        await buisnessinfoBuisnessinfoRecord
                                            .reference
                                            .update(buisnessinfoUpdateData);
                                        await pageViewController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );

                                        setState(() {});
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        width: 140,
                                        height: 60,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Registration Details:',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                                              controller: buisnesspanController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Buisness PAN:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                              controller:
                                                  buisnessinputController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Buisness CIN:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
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
                                              controller: gstnumberController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'GST number:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xFFE6E6E6),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                16, 0, 0, 0),
                                            child: FlutterFlowDropDown(
                                              initialOption:
                                                  'MSME Registration Status:',
                                              options: [
                                                'MSME Registration Status:',
                                                'Registered',
                                                'Not Registered'
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                    msmeregdropValue = value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
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
                                            child: FlutterFlowDropDown(
                                              initialOption: 'IPR Status:',
                                              options: [
                                                'IPR Status:',
                                                'Copyright',
                                                'Trademark',
                                                'Patent',
                                                'NA'
                                              ],
                                              onChanged: (value) {
                                                setState(
                                                    () => iprdropValue = value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
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
                                              controller: licencesController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Licences:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                        final buisnessinfoUpdateData =
                                            createBuisnessinfoRecordData(
                                          buisnessPan:
                                              buisnesspanController.text,
                                          buisnessCin:
                                              buisnessinputController.text,
                                          gstNumber: msmeregdropValue,
                                          ipr: iprdropValue,
                                          licences: licencesController.text,
                                        );
                                        await buisnessinfoBuisnessinfoRecord
                                            .reference
                                            .update(buisnessinfoUpdateData);
                                        await pageViewController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );

                                        setState(() {});
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        width: 140,
                                        height: 60,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Products / Services/Market:',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                                              controller:
                                                  noofproductsController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'No. of Products:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                          height: 120,
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
                                              controller:
                                                  productdescriptionController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Product Description:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                            child: FlutterFlowDropDown(
                                              initialOption:
                                                  'Market Analysis Summary:',
                                              options: [
                                                'Market Analysis Summary:',
                                                'Lower Class',
                                                'Middle Class',
                                                'Premium'
                                              ],
                                              onChanged: (value) {
                                                setState(
                                                    () => masdropValue = value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
                                              hidesUnderline: true,
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
                                            child: FlutterFlowDropDown(
                                              initialOption:
                                                  'Market Segmentation:',
                                              options: [
                                                'Market Segmentation:',
                                                'Individual(Retail)',
                                                'Corporate',
                                                'Other'
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                    marketsegmentdropValue =
                                                        value);
                                              },
                                              width: 120,
                                              height: 40,
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
                                              borderColor: Colors.transparent,
                                              borderWidth: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 9, 8, 9),
                                              hidesUnderline: true,
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
                                        final buisnessinfoUpdateData =
                                            createBuisnessinfoRecordData(
                                          noOfProducts: int.parse(
                                              noofproductsController.text),
                                          productDescription:
                                              productdescriptionController.text,
                                          mas: masdropValue,
                                          marketSegment: marketsegmentdropValue,
                                        );
                                        await buisnessinfoBuisnessinfoRecord
                                            .reference
                                            .update(buisnessinfoUpdateData);
                                        await pageViewController.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );

                                        setState(() {});
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        width: 140,
                                        height: 60,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Revenue/Pricing',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                                              controller:
                                                  salesstratergyController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Sales Strategy:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                              controller:
                                                  salesforecastController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Sales Forecast:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                hintText:
                                                    'Projected Average monthly sale',
                                                hintStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
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
                                            color:
                                                FlutterFlowTheme.tertiaryColor,
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
                                              controller:
                                                  avgunitpriceController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Average unit price:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xFFE6E6E6),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                16, 0, 0, 0),
                                            child: TextFormField(
                                              controller:
                                                  locationfacilitiesController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    'Location & Facilities:',
                                                labelStyle: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF8B97A2),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
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
                                                    OutlineInputBorder(
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
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
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
                                        final buisnessinfoUpdateData =
                                            createBuisnessinfoRecordData(
                                          salesStrategy:
                                              salesstratergyController.text,
                                          salesForecast:
                                              salesforecastController.text,
                                          avgUnitPrice: int.parse(
                                              avgunitpriceController.text),
                                          locationFacilities:
                                              locationfacilitiesController.text,
                                        );
                                        await buisnessinfoBuisnessinfoRecord
                                            .reference
                                            .update(buisnessinfoUpdateData);
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => NavBarPage(
                                                initialPage: 'HomePage'),
                                          ),
                                        );
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Buisness Info '),
                                              content:
                                                  Text('Information Saved!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        setState(() {});
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 140,
                                        height: 60,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
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
                  Align(
                    alignment: Alignment(0, 1),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: SmoothPageIndicator(
                        controller: pageViewController,
                        count: 4,
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
                          dotColor: FlutterFlowTheme.secondaryColor,
                          activeDotColor: FlutterFlowTheme.primaryColor,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
