import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
      
    );
  }
}
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final formkey = GlobalKey<FormState>();
  String name = " ";

  
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor:Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formkey,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.04),
              Text("Here get",style: TextStyle(fontSize: 30, color: Colors.red),),
              Text("wellcome", style: TextStyle(fontSize:30, color:Colors.red)),
              SizedBox(height:height*0.09),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Ener Your Name",
                  hintText: "Enter Your name",
                ),
                validator: (value){
                  if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value  )){
                    return "correcet name";
                  } else{
                    return "null";
                  }
                } 
                
              ),
               SizedBox(height:height*0.09),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Ener Your Name",
                  hintText: "Enter Your name",
                )
              ),
               SizedBox(height:height*0.09),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Ener Your Name",
                  hintText: "Enter Your name",
                )
              ),

            ],
          ),
        ),
      ),
      
    );
  }
}