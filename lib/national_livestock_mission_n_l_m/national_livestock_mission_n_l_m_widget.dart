import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'national_livestock_mission_n_l_m_model.dart';
export 'national_livestock_mission_n_l_m_model.dart';

class NationalLivestockMissionNLMWidget extends StatefulWidget {
  const NationalLivestockMissionNLMWidget({super.key});

  static String routeName = 'NationalLivestockMissionNLM';
  static String routePath = '/nationalLivestockMissionNLM';

  @override
  State<NationalLivestockMissionNLMWidget> createState() =>
      _NationalLivestockMissionNLMWidgetState();
}

class _NationalLivestockMissionNLMWidgetState
    extends State<NationalLivestockMissionNLMWidget> {
  late NationalLivestockMissionNLMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NationalLivestockMissionNLMModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFD5CEA0),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'National Livestock \nMission (NLM)',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                child: Text(
                  'Objective: Initiated in 2014-15, NLM focuses on sustainable development of the livestock sector, emphasizing breed improvement, feed and fodder development, and entrepreneurship. ​\nNABARD\n\nKey Sub-Missions:\n\nBreed Development of Livestock & Poultry: Encourages entrepreneurship and breed improvement in poultry, sheep, goat, and piggery sectors.​\nClearTax\n+2\nAnimal Husbandry & Dairying Dept.\n+2\ndahd.maharashtra.gov.in\n+2\n\nFeed and Fodder Development: Aims to enhance the availability of quality feed and fodder to support livestock health and productivity.​\n\nInnovation and Extension: Promotes research, innovation, and extension services in the livestock sector. ​\nnlm.udyamimitra.in\n\nAchievements: NLM has facilitated the establishment of numerous livestock enterprises, improved breed quality, and increased awareness about scientific livestock management practices among farmers.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
