import '/flutter_flow/flutter_flow_util.dart';
import 'ideapitch_widget.dart' show IdeapitchWidget;
import 'package:flutter/material.dart';

class IdeapitchModel extends FlutterFlowModel<IdeapitchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email_Name widget.
  FocusNode? emailNameFocusNode1;
  TextEditingController? emailNameController1;
  String? Function(BuildContext, String?)? emailNameController1Validator;
  // State field(s) for Email_Signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for Email_Name widget.
  FocusNode? emailNameFocusNode2;
  TextEditingController? emailNameController2;
  String? Function(BuildContext, String?)? emailNameController2Validator;
  // State field(s) for Email_Name widget.
  FocusNode? emailNameFocusNode3;
  TextEditingController? emailNameController3;
  String? Function(BuildContext, String?)? emailNameController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailNameFocusNode1?.dispose();
    emailNameController1?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupController?.dispose();

    emailNameFocusNode2?.dispose();
    emailNameController2?.dispose();

    emailNameFocusNode3?.dispose();
    emailNameController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
