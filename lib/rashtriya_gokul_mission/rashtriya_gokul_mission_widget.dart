import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rashtriya_gokul_mission_model.dart';
export 'rashtriya_gokul_mission_model.dart';

class RashtriyaGokulMissionWidget extends StatefulWidget {
  const RashtriyaGokulMissionWidget({super.key});

  static String routeName = 'RashtriyaGokulMission';
  static String routePath = '/rashtriyaGokulMission';

  @override
  State<RashtriyaGokulMissionWidget> createState() =>
      _RashtriyaGokulMissionWidgetState();
}

class _RashtriyaGokulMissionWidgetState
    extends State<RashtriyaGokulMissionWidget> {
  late RashtriyaGokulMissionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RashtriyaGokulMissionModel());
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Rastriya Gokul Mission',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'The Rashtriya Gokul Mission (RGM) is an initiative launched by the Government of India under the National Programme for Bovine Breeding and Dairy Development (NPBBDD). It aims to conserve and develop indigenous cattle breeds to enhance their productivity and promote sustainable dairy farming.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Objectives of Rashtriya Gokul Mission:',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    '1. Conservation & Development of Indigenous Breeds :\nFocuses on improving breeds like Gir, Sahiwal, Red Sindhi, Tharparkar, and Rathi.\n\n2. Breed Improvement :\n  Uses advanced breeding technologies like Artificial Insemination (AI), Embryo Transfer Technology (ETT), and In Vitro Fertilization (IVF).\n\n3. Enhancing Milk Production :\n Aims to increase milk productivity while maintaining indigenous genetic resources.\n\n4. Establishing Gokul Grams : \nIntegrated indigenous cattle development centers that promote scientific breeding and high-quality livestock management.\n\n5. Strengthening AI Services :\n Expanding AI centers to improve breed quality and ensure higher conception rates.\n\n6. Creation of E-Marketplaces :\n Facilitating an online platform for farmers to trade high-quality indigenous cattle.\n\n7. Promotion of Farmers\' Welfare :\n Supporting dairy farmers with better cattle breeds, veterinary services, and improved livestock management techniques.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Key Features of Rashtriya Gokul Mission :',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    '1️⃣ Gokul Grams (Indigenous Cattle Farms):\n\n• These are model farms established in rural areas to promote the breeding of indigenous cows.\n\n•  Each Gokul Gram will have 1,000-2,000 high-quality indigenous cows and bulls.\n\n•  Provides training to farmers on scientific cattle management.\n\n2️⃣ National Kamdhenu Breeding Centers (NKBC):\n\n• Centers of excellence for genetic improvement of indigenous cattle.\n\n• Uses genomic selection and advanced reproduction technologies.\n\n3️⃣ Expansion of Artificial Insemination Services:\n\n• Increases AI coverage from 30% to over 70% to improve breed quality.\n\n• Promotes the use of sex-sorted semen for high-yielding female calves.\n\n4️⃣ Genomic Selection and Breed Registration:\n\n• National Bovine Genomic Center ensures accurate genetic selection and conservation.\n \n• Implements DNA testing and genetic markers to certify indigenous breeds.\n\n5️⃣ Promotion of Indigenous Cattle Dairy Products:\n \n• Encourages value-added dairy products like A2 milk, ghee, and organic dairy farming.\n\n• Supports branding and marketing of indigenous cattle products.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Budget and Financial Support :',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    '• The government has allocated ₹2,400 crores (2021-2022) for RGM, focusing on breed improvement and conservation.\n\n• Provides subsidies and incentives to farmers for adopting AI, IVF, and ETT.\n\n• Supports state governments and NGOs in setting up Gokul Grams and AI centers.',
                    textAlign: TextAlign.start,
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
      ),
    );
  }
}
