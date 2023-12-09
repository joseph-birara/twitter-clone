// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'welcome_page_model.dart';
// export 'welcome_page_model.dart';

// class WelcomePageWidget extends StatefulWidget {
//   const WelcomePageWidget({Key? key}) : super(key: key);

//   @override
//   _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
// }

// class _WelcomePageWidgetState extends State<WelcomePageWidget> {
//   late WelcomePageModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => WelcomePageModel());
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
//         body: Align(
//           alignment: AlignmentDirectional(0.00, 0.00),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     if (Theme.of(context).brightness == Brightness.light)
//                       Flexible(
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                           child: Transform.rotate(
//                             angle: 5.4105,
//                             child: Image.asset(
//                               'assets/images/spiral_arrow_light.png',
//                               width: 50,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     if (Theme.of(context).brightness == Brightness.dark)
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                         child: Transform.rotate(
//                           angle: 5.4105,
//                           child: Image.asset(
//                             'assets/images/spiral_arrow_dark.png',
//                             width: 50,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
//                           child: Text(
//                             'Click on',
//                             style: FlutterFlowTheme.of(context).labelLarge,
//                           ),
//                         ),
//                         MouseRegion(
//                           opaque: false,
//                           cursor: SystemMouseCursors.basic ?? MouseCursor.defer,
//                           child: Stack(
//                             alignment: AlignmentDirectional(0, 0),
//                             children: [
//                               Container(
//                                 width: 44,
//                                 height: 44,
//                                 decoration: BoxDecoration(
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x33000000),
//                                       offset: Offset(0, 1),
//                                     )
//                                   ],
//                                   gradient: LinearGradient(
//                                     colors: [
//                                       FlutterFlowTheme.of(context).primary,
//                                       FlutterFlowTheme.of(context).tertiary
//                                     ],
//                                     stops: [0, 1],
//                                     begin: AlignmentDirectional(1, -1),
//                                     end: AlignmentDirectional(-1, 1),
//                                   ),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       2, 2, 2, 2),
//                                   child: AnimatedContainer(
//                                     duration: Duration(milliseconds: 150),
//                                     curve: Curves.easeInOut,
//                                     width: 32,
//                                     height: 32,
//                                     decoration: BoxDecoration(
//                                       color: _model.mouseRegionHovered!
//                                           ? Colors.transparent
//                                           : Color(0xFF25254F),
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           6, 6, 6, 6),
//                                       child: Image.asset(
//                                         'assets/images/ff_logo_small_dark.png',
//                                         width: double.infinity,
//                                         height: double.infinity,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           onEnter: ((event) async {
//                             setState(() => _model.mouseRegionHovered = true);
//                           }),
//                           onExit: ((event) async {
//                             setState(() => _model.mouseRegionHovered = false);
//                           }),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
//                           child: Text(
//                             'to start exploring',
//                             style: FlutterFlowTheme.of(context).labelLarge,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                 child: Text(
//                   'Welcome to',
//                   style: FlutterFlowTheme.of(context).headlineLarge.override(
//                         fontFamily: 'Outfit',
//                         color: FlutterFlowTheme.of(context).secondaryText,
//                       ),
//                 ),
//               ),
//               if (Theme.of(context).brightness == Brightness.dark)
//                 Container(
//                   constraints: BoxConstraints(
//                     maxWidth: 500,
//                   ),
//                   decoration: BoxDecoration(),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
//                     child: Image.asset(
//                       'assets/images/FF_Ai_Gen_Light_Full_mono@2x.png',
//                       width: double.infinity,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               if (Theme.of(context).brightness == Brightness.light)
//                 Container(
//                   constraints: BoxConstraints(
//                     maxWidth: 500,
//                   ),
//                   decoration: BoxDecoration(),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
//                     child: Image.asset(
//                       'assets/images/FF_Ai_Gen_Dark_Full_mono@2x.png',
//                       width: double.infinity,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               Spacer(flex: 3),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
