import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kamdhenu_program_model.dart';
export 'kamdhenu_program_model.dart';

class KamdhenuProgramWidget extends StatefulWidget {
  const KamdhenuProgramWidget({super.key});

  static String routeName = 'KamdhenuProgram';
  static String routePath = '/kamdhenuProgram';

  @override
  State<KamdhenuProgramWidget> createState() => _KamdhenuProgramWidgetState();
}

class _KamdhenuProgramWidgetState extends State<KamdhenuProgramWidget> {
  late KamdhenuProgramModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KamdhenuProgramModel());
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
            'Kamadhenu program',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Kamadhenu Program encompasses various initiatives in India aimed at the conservation, improvement, and promotion of indigenous cow breeds, reflecting the cultural and economic significance of cattle in Indian society. Notable programs include:​',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                      child: Text(
                        '1. Kamdhenu – Indian Cow Breed Improvement & Conservation Program by Divya Jyoti Jagrati Sansthan (DJJS):\n\n • Overview: This initiative aims to re-establish the significance of Indian cows as central to sustainable societies. ​\nDivya Jyoti Jagrati Sansthan\n\n •  Key Activities:\n\n   → Selective Breeding and Bull Mother Farming: Enhancing indigenous breeds through controlled breeding practices.​\n\n   → Research & Development: Advancing scientific studies related to cow conservation and utilization.​\n\n  → Capacity Building: Training farmers, breeders, and gaushala (cow shelter) managers, and providing high-quality bulls and semen to improve breed quality.​\n\n  →  Sustainability Practices: The program integrates sustainable practices like gobar (cow dung) electricity plants, manure composting, organic farming, and the production of Ayurvedic medicines, aiming for a zero-waste system.​\n\n  → Recognition: The Kamdhenu project has been acknowledged for its quality scientific research and adherence to international standards, receiving accolades such as the National Kamdhenu and Gopal Ratna awards from the Indian government. ​\nDivya Jyoti Jagrati Sansthan\n\n2. Kamdhenu Yojna:\n\n•  Introduction: Launched in Uttar Pradesh in 2013, this dairy scheme addresses the low availability of high-yielding germplasm animals in the state. ​\n\n•  Versions: The scheme includes Kamdhenu, Mini Kamdhenu, and Micro Kamdhenu versions, each tailored to different scales of dairy farming.​\n\n• Objectives:\n\n  → Establishment of High-Yielding Animal Units: Setting up units with 100 high-yielding animals sourced from outside Uttar Pradesh.​\n\n  → Financial Support: Providing entrepreneurs with interest-free loans and subsidies to encourage participation.​\n\n  → Impact: Over 1,000 dairy farms of varying capacities have been established under this scheme, contributing to increased milk production and economic development in the region.​\n\n3. Kamdhenu University:\n\n• Establishment: Kamdhenu University was established to promote education and research in veterinary and animal sciences, dairy, and fisheries. ​\n\n•  Programs Offered:\n\n  → Graduate and Postgraduate Programs: Focusing on comprehensive studies in animal husbandry and related fields.​\n\n  → Diploma Courses: Such as the Diploma in Animal Husbandry, aimed at skill development in the sector.​\n\n•  Role: The university plays a pivotal role in advancing knowledge and practices related to animal sciences in India.​\n\n4. Kamadhenu in Hindu Mythology:\n\n•  Significance: Kamadhenu, also known as Surabhi, is a divine bovine-goddess described in Hinduism as the mother of all cows. She is believed to be a miraculous cow of plenty who provides her owner with whatever they desire. ​\n\n•  Cultural Impact: The reverence for Kamadhenu has influenced various cultural and religious practices in India, including the veneration of cows and the promotion of cow protection initiatives.​\n\n5. Kamdhenu Partner Program by Kamdhenu Group:\n\n•  Overview: Kamdhenu Group offers a partner program inviting collaboration in supplying high-quality building materials across India. ​\n\n• Benefits:\n\n  → Access to Kamdhenu\'s expertise and experience for efficient business operations.​\n\n  → Association with a well-established brand in steel and paints.​\nKamdhenu Group\n\n  → Support in technology, quality assurance, and marketing.​\n\nThese diverse initiatives under the Kamadhenu umbrella collectively contribute to the preservation of indigenous cattle breeds, enhancement of dairy production, promotion of sustainable agricultural practices, and the integration of cultural values into modern development in India.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
