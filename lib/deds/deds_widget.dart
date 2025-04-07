import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'deds_model.dart';
export 'deds_model.dart';

class DedsWidget extends StatefulWidget {
  const DedsWidget({super.key});

  static String routeName = 'DEDS';
  static String routePath = '/deds';

  @override
  State<DedsWidget> createState() => _DedsWidgetState();
}

class _DedsWidgetState extends State<DedsWidget> {
  late DedsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DedsModel());
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
            'Dairy Entrepreneurship\n Development Scheme (DEDS)',
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
                  'Objective: Implemented by NABARD, DEDS aims to promote self-employment in the dairy sector by providing financial assistance for setting up modern dairy farms and infrastructure.​\n\nKey Components:\n\nFinancial Support: Subsidized loans for establishing dairy farms, procurement of milch animals, and setting up dairy product processing units.​\nanimalhusbandry.assam.gov.in\n\nTraining and Capacity Building: Educating entrepreneurs on modern dairy farming practices.​\n\nAchievements: Facilitated the establishment of numerous dairy enterprises, contributing to increased milk production and employment generation.​\n\n6. Animal Husbandry Infrastructure Development Fund (AHIDF)\nObjective: To provide financial support for establishing infrastructure related to animal husbandry, including dairy processing, meat processing, and animal feed plants.​\n\nKey Components:\n\nInfrastructure Development: Funding for setting up modern processing facilities and value addition in the animal husbandry sector.​\n\nCredit Support: Interest subvention on loans for eligible projects.​\n\nAchievements: Enhanced infrastructure .',
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
