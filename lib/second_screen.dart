// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_ui/sliderdata.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  Card card(Color color, String title, IconData id) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      color: color,
      child: SizedBox(
        height: 140,
        width: 170,
        child: Column(
          children: [Icon(id,color: Colors.white,), Text(title,style: TextStyle(color: Colors.white),)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(

            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          'Welcome back,',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Samantha William',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Office News',
                //  textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white),
              ),
              Stack(
                //   fit: StackFit.passthrough,
                children: [
                  Container(
                    color: Colors.white,
                    // decoration: BoxDecoration(
                    //
                    //     borderRadius: BorderRadius.only(
                    //         topLeft: Radius.elliptical(50, 50),
                    //         topRight: Radius.circular(50))),
                    height: 435,
                    margin: EdgeInsets.only(top: 110),
                    // alignment: Alignment.bottomCenter,

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:70.0,bottom: 10,left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Main Menu',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'See All',
                                style:
                                    TextStyle(color: Colors.deepOrangeAccent),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            card(Colors.lightBlue, 'Management Employees & Leave',
                                Icons.perm_contact_cal_outlined),
                            card(Colors.orangeAccent,
                                'Claims & Salaries Employee', Icons.light)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            card(Colors.redAccent, 'Program Training',
                                Icons.stay_current_portrait_rounded),
                            card(Colors.green, 'System Recruitment',
                                Icons.person_add_alt)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.redAccent, borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.only(top: 10, left: 60),
                    height: 150,
                    width: 300,
                    child: SliderData(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
