// import 'package:flutter/material.dart';
// import 'package:flutter_app/bloc/navigation_bloc212.dart';
// import 'package:flutter_app/main.dart';
// import 'package:flutter_app/screenb.dart';
// import 'package:flutter_app/screenС.dart';
//
//
// import '../screenС.dart';
// class NavigationStream extends StatefulWidget {
//   @override
//   _NavigationStreamState createState() => _NavigationStreamState();
// }
//
//
// class _NavigationStreamState extends State<NavigationStream> with NavigationStates {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: StreamBuilder(
//         stream: bloc.getNavigation,
//         initialData: bloc.navigationProvider.currentNavigation,
//         builder: (context, snapshot) {
//           if (bloc.navigationProvider.currentNavigation == "ScreenB") {
//             return MyScreenB();
//           }
//           if (bloc.navigationProvider.currentNavigation == "ScreenC") {
//             return MyScreenC();
//           }
//
//         }, // access the data in our Stream here
//       ),
//     );
//   }
// }
