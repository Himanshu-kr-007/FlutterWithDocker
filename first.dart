import 'package:flutter/material.dart';
import 'login.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home Page")),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                height: 50,
                width: 250,
                child: Center(
                  child: 
                  Text("Team Name :- Init 0", 
                        style: TextStyle
                            (color: Colors.black, 
                             fontSize: 25, 
                             fontStyle: FontStyle.italic),
                  ), 
                ),
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(5),
                  color: Colors.orange, 
                  border: Border.all(color: Colors.green, 
                  width: 2,),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "Task 11",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                height: 50,
                width: 200,
                child: Center(
                  child: Text(
                    "Team Members",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      //  backgroundColor: Colors.black
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(1.0),
                height: 30,
                width: 250,
                child: Center(
                  child: Text(
                    "Aishwarya Birla",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      // backgroundColor: Colors.lime
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(00),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(1.0),
                height: 30,
                width: 250,
                child: Center(
                  child: Text(
                    "Dolly Mehra",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      // backgroundColor: Colors.lime
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(00),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(1.0),
                height: 30,
                width: 250,
                child: Center(
                  child: Text(
                    "Himanshu Kumar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      // backgroundColor: Colors.lime
                   ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(00),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(1.0),
                height: 30,
                width: 250,
                child: Center(
                  child: Text(
                    "Kuldeep Kumawat",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      // backgroundColor: Colors.lime
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(00),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(1.0),
                height: 30,
                width: 250,
                child: Center(
                  child: Text(
                    "Rahul Kant  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      // backgroundColor: Colors.lime
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(00),
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(35),
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    // print("I am Home");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      " Go To Main Page",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  // border: Border.all(color: Colors.blueAccent, width: 1),
                ),
              ),
            ],
          ),
        ));
  }
}
