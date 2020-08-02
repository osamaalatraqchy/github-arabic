import 'package:flutter/material.dart';
import 'package:sharedpreference/displayID.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()=>runApp(MaterialApp(home: InsertID(),));
class InsertID extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return InsertIDState();
  }
}
class InsertIDState extends State<InsertID>{
  //change it to database......
  var database = SharedPreferences.getInstance();

  saveID(int c) async{
    var pref = await db;
    pref.setInt("id", c);
  }

  var id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: id ,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  saveID(int.parse(id.text));
                  id.text = '';
                  },
                child: Text("save id"),
              ),
              SizedBox(width: 10,),
              FlatButton(
                color: Colors.yellow,
                onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DisplayID()));},
                child: Text("display id"),
              )
            ],
          )
        ],
      ),
    );
  }

}
