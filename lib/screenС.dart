// TODO Implement this library.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter_app/singleton.dart';




class MyScreenC extends StatefulWidget {
  MyScreenC({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyScreenCState createState() => _MyScreenCState();
}

class _MyScreenCState extends State<MyScreenC> {
  String _val = "";
  bool _value = true;
  MySingleton _singleton = MySingleton.getInstance();

  @override
  void initState() {
    _val = _singleton.val;
    super.initState();
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
            // backgroundColor: Colors.cyan[800],


            appBar: AppBar(
              // title: Text(widget.title),
            ),
            drawer:
            // Theme(
            //           data: Theme.of(context).copyWith(
            //           canvasColor: Colors.blue,
            //     ),
            Drawer(
              child: Container(color: Colors.blueGrey[800],
                child: ListView(
                  children: <Widget> [
                    DrawerHeader(
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //
                      //         fit: BoxFit.cover,
                      //         image:  AssetImage('assets/img1.png'))),


                      child: Stack(children: <Widget>[
                        //
                        //
                        //
                        // ],),
                        Positioned(
                            bottom: 90.0,
                            left: 70.0,
                            child: Text("test Innoverse",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500)
                            )
                        ),
                        Positioned(
                            bottom: 20.0,
                            left: 70.0,
                            child: Text("Անջատված",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500)
                            )
                        ),
                        Positioned(
                          child: Switch.adaptive(
                            value: _value,
                            onChanged: (newValue) => setState(() => _value = newValue),),

                          bottom: 16.0,
                          left: 3.0,

                          // child: Text("4",
                          //     style: TextStyle(
                          //         color: Colors.white.withOpacity(0.7),
                          //         fontSize: 30.0,
                          //         fontWeight: FontWeight.w500)
                          // )
                        ),
                        Positioned(

                          child: Container(
                            // decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           fit: BoxFit.cover,
                            //           image:  AssetImage('assets/img1.png'))
                            // ),
                            color: Colors.blueGrey[800],
                            height: 44,
                            width: 49,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset(
                                'assets/1.png',
                                fit: BoxFit.fill,
                              ),
                            ),


                          ),
                          bottom: 83.0,
                          left: 9.0,
                          // child: Text("Անջատված",
                          //     style: TextStyle(
                          //         color: Colors.white.withOpacity(0.7),
                          //         fontSize: 30.0,
                          //         fontWeight: FontWeight.w500)
                          // )
                        ),

                        Text(""),
                      ]
                      ),
                      //
                      //   child:Text('Test Innoverse'),
                      //
                      //   decoration: BoxDecoration(
                      //     // color: Colors.blue,
                      //   ),
                      //    child: Column(
                      //        crossAxisAlignment: CrossAxisAlignment.start,
                      //
                      //        children: <Widget>[
                      //          Text("Test Innoverse"),
                      //
                      //          Text("Switch off"),
                      //        ]
                      //    ),


                    ),


                    ListTile(

                      leading: Icon(Icons.home,color: Colors.blue,),
                      title: Text("Պատվերներ",style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)
                      ),
                      onTap: (){

                        Navigator.of(context).pop();

                        // bloc.updateNavigation("ScreenB");
                        // Navigator.pushNamed(context, '/secondScreen');
                      },

                    ),
                    ListTile(
                      leading: Icon(Icons.history_sharp ,color: Colors.blue,),
                      title: Text("Պատմություն",style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)
                      ),
                          onTap: () {

                      }
                      // onTap: (){},

                    ),
                    ListTile(
                      leading: Icon(Icons.settings,color: Colors.blue,),
                      title: Text("Կարգավորումներ",style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)
                      ),
                      onTap: (){
                        var k=0;
                      },

                    ),
                    ListTile(
                      //leading: Icon(Icons.exit_to_app ,color: Colors.blue,),
                      title: Text("",style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)
                      ),
                      // onTap: (){},

                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app ,color: Colors.blue,),
                      title: Text("Ելք",style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)
                      ),
                      onTap: () {
                        Navigator.of(context).pop();

                        // bloc.updateNavigation("ScreenC");
                        // Navigator.pushNamed(context, '/secondScreen1');
                        // change app state...
                        // Navigator.pop(context); // close the drawer
                      },

                    ),
                  ],
                ),
              ),),



            body: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding( padding: EdgeInsets.only(top: 50, bottom:50, left:50, right:50),
                      //child: Align(
                      //alignment: Alignment.topCenter,
                      child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "$_val ",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(25.0),
                                borderSide:  BorderSide(
                                ),))))
                  //child: Text('$_val',
                  //style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellowAccent, fontSize: 20),
                  //),)
                  //ElevatedButton(
                  // child: Text("Go to A")
                  //  onPressed: (){

                  // }
                  //)

                ],
              ),
            ),
            floatingActionButton:
            FloatingActionButton.extended(
                onPressed: (){}, label: Text("If that I'm a different screen")  ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerFloat,


            // This trailing comma makes auto-formatting nicer for build methods.
          )
      );
  }
}