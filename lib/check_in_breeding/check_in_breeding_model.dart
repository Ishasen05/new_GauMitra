import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'check_in_breeding_widget.dart' show CheckInBreedingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckInBreedingModel extends FlutterFlowModel<CheckInBreedingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Bull widget.
  String? bullValue;
  FormFieldController<String>? bullValueController;
  // State field(s) for Cow widget.
  String? cowValue;
  FormFieldController<String>? cowValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
