import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/gridView_widget.dart';
import 'Widgets/weather widget.dart';

class weatherScreen extends StatelessWidget {
  const weatherScreen({Key? key}) : super(key: key);

  Future<position> fetchWeatherData() async{
    bool gpsEnabled;
    LocationPermission Permission;
    gpsEnabled = await Geolocator.isLocationServiceEnable();
    if(!gpsEnabled){
      return Future.error('Lacation Service Denied');
    }
    premission = await Geolocator.checkPermission();
    if(premission == Locationpremission.denied){
      premission = await Geolocator.reguestPremission();
      if(premission ==Locationpremission.denied ){
        return Future.error('Premission Denied');
      }
       return await geolocator.getCurrentPermission();
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true,
      appBar: AppBar(
      title: Text('Cairo'),
        actions: [IconButton(onPressed: (){},icon: Icon(Icons.date_range),)],
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children:[
          Container(
            height:MediaQuery.of(context).size.height,
            child :Image.asset('assets/images/sunny.jpeg', fit: BoxFit.fill),
          ),
          Container(
            height:MediaQuery.of(context).size.height,
            color: Colors.black26,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.end ,
              children: [
                WeatherWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                gridView(),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

