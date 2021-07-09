import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwotgraphWidget extends StatefulWidget {
  SwotgraphWidget({Key key}) : super(key: key);

  @override
  _SwotgraphWidgetState createState() => _SwotgraphWidgetState();
}

class _SwotgraphWidgetState extends State<SwotgraphWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.35, -0.26),
              child: Image.asset(
                'assets/images/Swottempl.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(-0.55, -0.41),
              child: Text(
                'Hello World',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
