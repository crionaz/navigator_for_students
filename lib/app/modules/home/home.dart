

import 'package:flutter/material.dart';

import '../profile/profile.dart';


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_Data.title),
      ),
      body: Column(
        children: [
          Text(value.toString(),style: TextStyle(fontSize: 60)),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width*0.5,
              child: Text(_Data.title,style: TextStyle(fontSize: 40),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                print("Before: "+value.toString());
                value++;
                print("After: "+value.toString());
                setState(() {});
                if(value>=30){
                  goto(context, Profile(valueFormHomePage: value.toString()));
                }
              }, icon: Icon(Icons.add)),
              IconButton(onPressed: (){
                print("Before: "+value.toString());
                value--;
                print("After: "+value.toString());
                setState(() {});
              }, icon: Icon(Icons.minimize))
            ],
          ),
          ElevatedButton(
              onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Profile(valueFormHomePage: value.toString(),isManual: true,))),
            child:  Text(Data2().buttonText),
          )
        ],
      ),
    );
  }
}


class _Data{
  static const title = "title";
  String buttonText = "Go to Profile";
}

class Data2 extends _Data{
  String title2 = "title";
}


goto(BuildContext context, Widget page){
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>page));
}




