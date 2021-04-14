// import 'dart:async';
//
// import 'package:flutter_app/bloc/navigation_provider2121.dart';
// // import 'package:flutter_navigation_drawer_bloc/src/bloc/navigation_provider2121.dart';
//
// class NavigationDrawerBloc {
//   final navigationController = StreamController();
//   NavigationProvider navigationProvider = new NavigationProvider();
//
//   Stream get getNavigation => navigationController.stream;
//
//   void updateNavigation(String navigation) {
//     navigationProvider.updateNavigation(navigation);
//     navigationController.sink.add(navigationProvider.currentNavigation);
//   }
//
//   void dispose() {
//     navigationController.close();
//   }
// }
//
// final bloc = NavigationDrawerBloc();