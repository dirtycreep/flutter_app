
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screenb.dart';
import 'package:flutter_app/singleton.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screenС.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import 'package:flutter_just_toast/flutter_just_toast.dart';



void main() {

  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      // routes: {
      //   '/secondScreen' : (context) => MyScreenB(title: "back",),
      // },
      onGenerateRoute: (RouteSettings  setting){
        switch(setting.name){
          case '/':
            return CupertinoPageRoute(builder: (_) =>MyHomePage(title: "Home"), settings: setting);
          case '/secondScreen':
            return CupertinoPageRoute(builder: (_) =>MyScreenB(title: "back"), settings: setting);
          case '/secondScreen1':
            return CupertinoPageRoute(builder: (_) =>MyScreenC(title: "screenCb"), settings: setting);
        }
      },

      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.transparent,
        // primaryColor: Colors.yellow[800],
        // accentColor: Colors.red[600],
        // primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent)
      ),
      home: MyHomePage(title: 'while in thought'),
    );

  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  // MySingleton _singleton = MySingleton.getInstance();
  // bool isShowToast = false;
  bool changed = true;
  final _focusNode1 = FocusNode();
  final _focusNode2 = FocusNode();

  @override
  void initState() {
    // _singleton.val = "Enter the text";
    _focusNode1.addListener((){
      if(!_focusNode1.hasFocus){
        setState(() {

        });
      }
    });
    _focusNode2.addListener((){
      if(!_focusNode2.hasFocus){
        setState(() {

        });
      }

    });
      super.initState();
  }


  void onButtonClick(){
      Fluttertoast.showToast(
          msg: "Wrong password or login",
          toastLength: Toast.LENGTH_SHORT,
          //gravity: ToastGravity.,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    setState(() {
      changed = false;
    });
  }


  @override
  Widget build(BuildContext context) {

    return
    Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey[900], Colors.blueGrey[800]]
            )
        ),
        child:
      Scaffold(
      body:

      SingleChildScrollView( child:
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 36),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child:
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                      child:RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                )),
              ),
              Expanded(
                flex: 5,
                child:
                Column(
                  children: [
                   Padding(
                     padding: EdgeInsetsDirectional.fromSTEB(10, 80, 130, 40),
                    child: Text("A world of possibility in an app ",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30.0,fontStyle: FontStyle.italic,)),
                    ),
                   Padding(
                     padding: EdgeInsetsDirectional.fromSTEB(0, 60, 10, 20),

                    child: TextField(
                        focusNode: _focusNode1,
                      onChanged: (nameData){
                        print("hi:$nameData ");
                        changed=true;
                      },

                      style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),decoration: InputDecoration.collapsed(
                        // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      // border: null,
                        fillColor: Colors.white,

                        hintText: 'Name',
                        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white.withOpacity(0.7))
                    ),),
                   ),
                    Padding(padding: EdgeInsets.only(right: 10),
                      child: TextFormField(

                        // validator: (passwordData){
                        //   if (passwordData.length < 7){
                        //     print ("Change password");
                        //   }
                        //
                        // },

                        focusNode: _focusNode2,
                        onChanged: (passwordData){
                          print("hi:$passwordData ");
                          // if (passwordData.length > 5){
                          //   print( "Change password");
                          //   changed = true;
                          // }


                          changed = true;

                          },

                        style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xFFbdc6cf)),obscureText: true,
                        decoration: InputDecoration.collapsed(
                        //border: OutlineInputBorder(),

                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 20.0, color: Colors.white.withOpacity(0.7))
                      ),
                        //validator: (),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(180, 110, 0, 0),
                      child : ElevatedButton(

                        // onPressed: (changed)?onButtonClick:null ,
                        onPressed: (){
                          Navigator.pushNamed(context, '/secondScreen');
                        },



                      style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.blueGrey[900], shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),),
                      child: Text(" SIGN IN -->  "),

                          //onPressed: (){}


                    ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        )
    )
    ),

    );

    // return Container(
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topLeft,
    //           end: Alignment.bottomRight,
    //           colors: [Colors.green, Colors.blue]
    //       )
    //
    //
    //   ),
    //   return Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: Container(
    //       decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //               begin: Alignment.topLeft,
    //               end: Alignment.bottomRight,
    //               colors: [Colors.blueGrey[900], Colors.blueGrey[800]]
    //           )
    //
    //
    //       ),
    //
    //       // child: Alignment.bottomLeft(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: <Widget>[
    //             Padding (
    //               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 60, 50)) ,
    //                 RotatedBox(
    //                     quarterTurns: 3,
    //                     child: Text(
    //                         "Sign in",
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 40.0,
    //                       ),
    //
    //
    //                     ),
    //
    //
    //
    //             ),
    //
    //
    //           ],
    //         ),
    //     ),
    //
    //
    //     // This trailing comma makes auto-formatting nicer for build methods.
    //   );

  }
}
