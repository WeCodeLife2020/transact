// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// // late List<CameraDescription> _cameras;

// // Future<void> mainfile() async {
// //   WidgetsFlutterBinding.ensureInitialized();

// //   _cameras = await availableCameras();
// // }

// /// CameraApp is the Main Application.
//  late  List<CameraDescription> cam ;
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//  final List camm = cam;
//    CameraApp({Key? key,}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(widget.camm[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             print('User denied camera access.');
//             break;
//           default:
//             print('Handle other errors.');
//             break;
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return FittedBox(
//       child: CameraPreview(controller),
//     );
//   }
// }
