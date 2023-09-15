import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),

          child: ElevatedButton(
            
            child: isloading ? CircularProgressIndicator(
              color: Colors.green,
              backgroundColor: Colors.white,



            ):Text("Login"),

            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                textStyle: TextStyle(fontSize: 23),
                // minimumSize: Size.fromHeight(40),
                padding: EdgeInsets.all(20)


            ),
            onPressed: () async{
if(isloading)
  return;
setState(() {
  isloading=true;
});
await Future.delayed(Duration(seconds: 2));

setState(() {
  isloading=false;
});

            },




          ),
        ),



      ),
    );

  }
}


