import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(223, 222, 222, 222),
           ),
           width: 375,
           height: 278,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
               color: Color.fromARGB(223, 222, 222, 222),
            ),          
            width: 160,
            child: Image.asset("assets/images/people-01.png",
            width: 118),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 278,
          width: 195,
          color: const Color.fromARGB(223, 222, 222, 222),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                  color: const Color(0x00dde8f2),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Text("Intermediate",
                    style: TextStyle(
                 fontSize: 16, 
                 fontWeight: FontWeight.w700, 
                 color: Color(0x0084a1b1)),),
              ),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Today's \nChallenge",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Text("Geman meals",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[600]
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Icon(Icons.diamond),
                  Text("Take this lesson to \n earn a new milestone",
                   style: TextStyle(
                    fontSize: 15
                   )
                  )
                ],
              )
            ],
          ),
        )
        ],
      ), 
    );
  }
}