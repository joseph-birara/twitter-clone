// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'new_page_model.dart';
// export 'new_page_model.dart';

// class NewPageWidget extends StatefulWidget {
//   const NewPageWidget({Key? key}) : super(key: key);

//   @override
//   _NewPageWidgetState createState() => _NewPageWidgetState();
// }

// class _NewPageWidgetState extends State<NewPageWidget> {
//   late NewPageModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => NewPageModel());

//     _model.textController ??= TextEditingController();
//     _model.value ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isiOS) {
//       SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(
//           statusBarBrightness: Theme.of(context).brightness,
//           systemStatusBarContrastEnforced: true,
//         ),
//       );
//     }

//     return GestureDetector(
//       onTap: () => _model.unfocusNode.canRequestFocus
//           ? FocusScope.of(context).requestFocus(_model.unfocusNode)
//           : FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//         body: SafeArea(
//           top: true,
//           child: Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Todo App',
//                         style: FlutterFlowTheme.of(context).headlineMedium,
//                       ),
//                       FlutterFlowIconButton(
//                         borderRadius: 30,
//                         buttonSize: 60,
//                         icon: Icon(
//                           Icons.close_rounded,
//                           color: FlutterFlowTheme.of(context).primaryText,
//                           size: 30,
//                         ),
//                         onPressed: () {
//                           print('IconButton pressed ...');
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
//                   child: TextFormField(
//                     controller: _model.textController,
//                     focusNode: _model.value,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       labelText: 'Task',
//                       hintText: 'Enter your task',
//                       hintStyle: FlutterFlowTheme.of(context).bodyLarge,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).primaryText,
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0x00000000),
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       errorBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0x00000000),
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       focusedErrorBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0x00000000),
//                           width: 2,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       contentPadding:
//                           EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
//                     ),
//                     style: FlutterFlowTheme.of(context).bodyMedium,
//                     validator:
//                         _model.textControllerValidator.asValidator(context),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                   child: FFButtonWidget(
//                     onPressed: () {
//                       print('Button pressed ...');
//                     },
//                     text: 'Add Task',
//                     options: FFButtonOptions(
//                       width: double.infinity,
//                       height: 55,
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                       iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                       color: FlutterFlowTheme.of(context).primary,
//                       textStyle:
//                           FlutterFlowTheme.of(context).titleMedium.override(
//                                 fontFamily: 'Readex Pro',
//                                 color: Colors.white,
//                               ),
//                       elevation: 2,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
//                         child: Container(
//                           width: double.infinity,
//                           height: 1,
//                           decoration: BoxDecoration(
//                             color:
//                                 FlutterFlowTheme.of(context).primaryBackground,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Task 1',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyMedium
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           color: FlutterFlowTheme.of(context)
//                                               .primaryText,
//                                         ),
//                                   ),
//                                   FlutterFlowIconButton(
//                                     borderRadius: 30,
//                                     buttonSize: 40,
//                                     icon: Icon(
//                                       Icons.delete_outline_rounded,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryText,
//                                       size: 20,
//                                     ),
//                                     onPressed: () {
//                                       print('IconButton pressed ...');
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Task 2',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyMedium
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           color: FlutterFlowTheme.of(context)
//                                               .primaryText,
//                                         ),
//                                   ),
//                                   FlutterFlowIconButton(
//                                     borderRadius: 30,
//                                     buttonSize: 40,
//                                     icon: Icon(
//                                       Icons.delete_outline_rounded,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryText,
//                                       size: 20,
//                                     ),
//                                     onPressed: () {
//                                       print('IconButton pressed ...');
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'Task 3',
//                                     style: FlutterFlowTheme.of(context)
//                                         .bodyMedium
//                                         .override(
//                                           fontFamily: 'Readex Pro',
//                                           color: FlutterFlowTheme.of(context)
//                                               .primaryText,
//                                         ),
//                                   ),
//                                   FlutterFlowIconButton(
//                                     borderRadius: 30,
//                                     buttonSize: 40,
//                                     icon: Icon(
//                                       Icons.delete_outline_rounded,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryText,
//                                       size: 20,
//                                     ),
//                                     onPressed: () {
//                                       print('IconButton pressed ...');
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
