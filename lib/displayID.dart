import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DisplayID extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DisplayIDState();
  }

}
class DisplayIDState extends State<DisplayID>{
  var db = SharedPreferences.getInstance();

  Future<int> getID() async{
    var pref = await db;
    var id = pref.getInt("id");
    return id;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("0", style: TextStyle(fontSize: 30),),
      ),
    );
  }

}