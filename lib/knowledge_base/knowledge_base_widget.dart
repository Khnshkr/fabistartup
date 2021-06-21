import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowledgeBaseWidget extends StatefulWidget {
  KnowledgeBaseWidget({Key key}) : super(key: key);

  @override
  _KnowledgeBaseWidgetState createState() => _KnowledgeBaseWidgetState();
}

class _KnowledgeBaseWidgetState extends State<KnowledgeBaseWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
