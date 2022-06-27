import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Text('Today',
          style: TextStyle(color:Colors.white,fontSize: 40),),
        Text('Today',
          style: TextStyle(color:Colors.white,fontSize: 15),),
        SizedBox(
          height: 20,
        ),
        Text('17°C',
          style: TextStyle(color:Colors.white,fontSize: 60),),
        Text('feels like 17°C',
          style: TextStyle(color:Colors.white,fontSize: 15),),
      ],
    );
  }
}
