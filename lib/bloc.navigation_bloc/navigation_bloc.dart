// import 'package:bloc/bloc.dart';
// // import 'package:flutter_app/screen%D0%A1.dart';
// import '../screenb.dart';
// import '../screenС.dart';
//
// enum NavigationsEvents{
//   HomePageClickedEvent,
//   MyAccountClickedEvent,
//   MyOrdersClickedEvent,
// }
//
// abstract class NavigationsStates {}
//
// class NavigationBloc extends Bloc<NavigationsEvents, NavigationsStates>{
//   @override
//
//   NavigationsStates get initialState => MyScreenB();
//
//   @override
//   Stream<NavigationsStates> mapEventToState(NavigationsEvents event) async* {
//     switch(event){
//       case NavigationsEvents.HomePageClickedEvent :
//         yield MyScreenB();
//         break;
//       case NavigationsEvents.MyAccountClickedEvent :
//         yield MyScreenC();
//         break;
//       // case NavigationsEvents.MyOrdersClickedEvent :
//       //   yield MyScreenB();
//       //   break;
//
//
//     }
//   }
//
//
// }