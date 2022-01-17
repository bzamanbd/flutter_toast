import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomeScreen extends StatelessWidget {
  final String appTitle;
  const HomeScreen({Key? key,required this.appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _myToastKey = GlobalKey<ScaffoldState>();
    _toastMssg(){
      Fluttertoast.showToast(
        msg: 'I am a toast',
        textColor: Colors.white,
        backgroundColor:Theme.of(context).primaryColor,
        fontSize: 18,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_LONG
        
        );
    }
    return Scaffold(
      key: _myToastKey,
      appBar: AppBar(
        title: Text(appTitle),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _toastMssg();
          }, 
          child: const Padding(
            padding:  EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 8.0
            ),
            child: Text('Click Me',
            textScaleFactor: 1.3,
            style: TextStyle(
              color: Colors.white
            ),
            ),
          )
          ),
      ),
    );
  }
}