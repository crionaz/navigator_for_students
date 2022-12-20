

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigator/app/modules/home/home.dart';



class Profile extends StatelessWidget {
  const Profile({Key? key,required this.valueFormHomePage,this.isManual}) : super(key: key);

  final String valueFormHomePage;
  final bool? isManual;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(height: 50,),
            if(isManual==true)
              Center(child: Text("This is Manual Navigation")),
            if(isManual==null)
              Center(child: Text("This is Automatic Nafigation after count 30")),
            Center(child: Text("Current Value is :$valueFormHomePage"))
          ],
        ));
  }
}
