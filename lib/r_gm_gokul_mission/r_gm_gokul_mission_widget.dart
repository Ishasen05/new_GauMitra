import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_gm_gokul_mission_model.dart';
export 'r_gm_gokul_mission_model.dart';

class RGmGokulMissionWidget extends StatefulWidget {
  const RGmGokulMissionWidget({super.key});

  static String routeName = 'RGmGokulMission';
  static String routePath = '/rGmGokulMission';

  @override
  State<RGmGokulMissionWidget> createState() => _RGmGokulMissionWidgetState();
}

class _RGmGokulMissionWidgetState extends State<RGmGokulMissionWidget> {
  late RGmGokulMissionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RGmGokulMissionModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
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
            'Rashtriya Gokul Mission (RGM):',
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
                  'Objective: Launched in December 2014, RGM aims to develop and conserve indigenous bovine breeds, enhance milk production, and make dairying more remunerative for rural farmers. ​\nAnimal Husbandry & Dairying Dept.\n\nKey Components:\n\nConservation of Indigenous Breeds: Establishment of Gokul Grams (integrated cattle development centers) to promote indigenous breeds.​\n\nGenetic Upgradation: Implementation of advanced breeding techniques to improve the genetic makeup of indigenous cattle.​\n\nTraining and Capacity Building: Educating farmers on scientific management of indigenous breeds.\n\nAchievements: Since its inception, RGM has contributed to the preservation and promotion of indigenous breeds, leading to increased milk productivity and better livelihoods for farmers. ',
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
