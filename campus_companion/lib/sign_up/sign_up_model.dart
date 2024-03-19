import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email_Name widget.
  FocusNode? emailNameFocusNode;
  TextEditingController? emailNameController;
  String? Function(BuildContext, String?)? emailNameControllerValidator;
  // State field(s) for Email_Signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for Password_Signup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)? passwordSignupControllerValidator;
  // State field(s) for Confirm_Password_Signup widget.
  FocusNode? confirmPasswordSignupFocusNode;
  TextEditingController? confirmPasswordSignupController;
  late bool confirmPasswordSignupVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordSignupControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordSignupVisibility = false;
    confirmPasswordSignupVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailNameFocusNode?.dispose();
    emailNameController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupController?.dispose();

    confirmPasswordSignupFocusNode?.dispose();
    confirmPasswordSignupController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
