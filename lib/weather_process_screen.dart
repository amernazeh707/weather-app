import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loading_screen.dart';

class WeatherProcessScreen extends StatelessWidget {

bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading? LoadingScreen() :Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Weather Process Screen'),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            child: Container(
              color: Colors.black26,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rainy.jpeg'),
                    fit: BoxFit.fill)
            ),
          ),

       ListView.separated(itemBuilder: (context,index)=>Center(
         child: Container(

           padding: const EdgeInsets.all(10.0),
           decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.white,
                 width: 2,
               ),
               borderRadius: BorderRadius.all(Radius.circular(20))
           ),
           child: const Text(
             "FlutterBeads",
             style: TextStyle(fontSize: 25.0,
               color: Colors.white,
             ),
           ),
         ),
       ),

           itemCount:20,
         separatorBuilder: ( context, index) => SizedBox(
           height: 10,
         ),
       )


        ],
      )

    );
  }
}
