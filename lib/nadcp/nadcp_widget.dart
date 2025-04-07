import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nadcp_model.dart';
export 'nadcp_model.dart';

class NadcpWidget extends StatefulWidget {
  const NadcpWidget({super.key});

  static String routeName = 'NADCP';
  static String routePath = '/nadcp';

  @override
  State<NadcpWidget> createState() => _NadcpWidgetState();
}

class _NadcpWidgetState extends State<NadcpWidget> {
  late NadcpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NadcpModel());
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
            'National Animal Disease\n Control Programme (NADCP)',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 19.0,
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
                  'Objective: To control and eradicate major livestock diseases like Foot and Mouth Disease (FMD) and Brucellosis by 2030 through vaccination.​\n\nKey Components:\n\nVaccination Drive: Mass vaccination of cattle, buffalo, sheep, goats, and pigs against FMD and Brucellosis.​\n\nSurveillance and Monitoring: Continuous monitoring and reporting of disease outbreaks.​\n\nAchievements: Reduction in disease incidence has improved animal health, leading to increased productivity and farmer incomes.​\n\n8. Dairy Infrastructure Development Fund (DIDF)\nObjective: To support the modernization of milk processing plants and machinery, enhancing the dairy supply chain.​\n\nKey Components:\n\nFinancial Assistance: Low-interest loans for dairy cooperatives to upgrade infrastructure.​\n\nQuality Improvement: Implementing measures to ensure the production of high-quality milk and dairy products.​\n\nAchievements: Modernized infrastructure has led to increased processing capacity, reduced wastage, and improved quality of dairy products.',
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
