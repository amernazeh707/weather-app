import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            CircularProgressIndicator(color: Colors.red,),
            SizedBox(height: 10,),
            Text('Loading...',
            style:TextStyle(color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}
