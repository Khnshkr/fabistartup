import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Knowledge Base',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.tertiaryColor,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.primaryColor,
                indicatorColor: FlutterFlowTheme.secondaryColor,
                tabs: [
                  Tab(
                    text: 'Q&A\'s',
                  ),
                  Tab(
                    text: 'Blog',
                  ),
                  Tab(
                    text: 'Videos',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text(
                      'Tab View 1',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'Tab View 2',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        FlutterFlowYoutubePlayer(
                          url: 'https://www.youtube.com/watch?v=JXXHqM6RzZQ',
                          autoPlay: false,
                          looping: true,
                          mute: false,
                          showControls: true,
                          showFullScreen: true,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=4ti_uK60nLk',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        )
                      ],
                    )
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
