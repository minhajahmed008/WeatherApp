// ignore_for_file: avoid_unnecessary_containers,, prefer_const_constructors 

import 'package:firstproject/ui/api/weather_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
var dayinfo = DateTime.now();
var dateFormat = DateFormat('EEE , d MMM, yyyy').format(dayinfo);

// ignore: must_be_immutable
class HomePage  extends StatelessWidget {
 HomePage({super.key});
// ignore: use_super_parameters


var client = WeatherData();

var data;

 

 
 
info() async {
  //var position = await GetPosition();
  data = await client.getData(24.87 , 67.05);
  return data;
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: duplicate_ignore
    // ignore: prefer_const_constructors
    return Scaffold(
      body: FutureBuilder(
        future: info(),
        builder: ((context , snapshot) {
        return Container(
      child: Column(
      children: [
        Container(
          height: size.height*0.75, 
          width: size.width,
          padding: EdgeInsets.only(top: 30),
          margin: EdgeInsets.only(right: 10,left: 10),
          decoration: BoxDecoration(
          color: Colors.red[300],
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            Color(0xff955cd1),
            Color(0xff3fa2fa),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          // ignore: prefer_const_literals_to_create_immutables
          stops: [0.2,0.85],
          ),
          ),
          child: Column(
          children: [
          Text(
            '${data?.cityName}',style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 35),
            ),
            SizedBox(
              height: 10,
            ),
              Text(
            dateFormat,style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 15),
            ),
             Image.asset(
            'assets/images/Sunny.png',
             width: size.width*0.4
                ),
           
               SizedBox(
                height: 10,
               ),
                Text(
            '${data?.condition}',style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w600),
            ),
            Text(
            '${data?.temp}°',
            style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height:20 ,
            ),
            Row(
              children: [
              Expanded(child: Column(
              children: [
                Image.asset('assets/images/stroom.png', width: size.width*0.15,),
                Text('${data?.wind}Km/h',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                
                SizedBox(height: 10,),
                Text('Wind',style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
                ),
                ),
              Expanded(child: Column(
              children: [
                Image.asset('assets/images/hum.png',width: size.width*0.15,),
                Text('${data?.humidity}'
                ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 10,),
                Text('Humidity',style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
                ],
                ),
                ),
              Expanded(child: Column(
              children: [
                Image.asset('assets/images/wind.png',width: size.width*0.15,),
                Text('${data?.wind_dir}',style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 10,),
                Text('Wind direction',style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
                ),
                ],
                ),
                ),],
              ),
              ],
             ),
            ),
            SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Column(
                children: [
              Text('Gust',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.gust}Kp/h',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Pressure',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.pressure}hpa',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),),
                ],
              ),
              ),
            Expanded(child: Column(
                children: [
              Text('UV',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.uv}',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Precription',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.precription}mm',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),),
                ],
              ),
              ),
            Expanded(child: Column(
                children: [
              Text('wind',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.wind}Km/h',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('LastUpdated',style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),),
              SizedBox(height: 5,),
              Text('${data?.last_updated}',style: TextStyle(
                color: Colors.green[400],
                fontSize: 17,
              ),),
                ],
              ),
              ),
            ],
          ),
          ],  
         ),
       );
      }
      ),
      ),
    );
  }
}