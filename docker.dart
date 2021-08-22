import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    String? output;
  web() async {
    var url = Uri.http("192.168.0.175", "/cgi-bin/command.py", {"x": cmd, "y": cn});
    var response = await http.get(url);
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  var cmd;
  var cn;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Your Container"),
        ),
        body: Column(
          children: [
            
            Text("Image Name ", 
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
              ),
            ),
            TextField(
              onChanged: (value) {
                cmd = value;
              },
              autocorrect: false,
              textInputAction: TextInputAction.send,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.developer_mode),
                  hintText: "Enter Docker Image"),
            ),
            Text(""),
            Text("***************",
            style: TextStyle(color: Colors.red),),
            Text("**                   **",
            style: TextStyle(color: Colors.red),),
            Text("**                   **",
            style: TextStyle(color: Colors.red),),
            Text("**                   **",
            style: TextStyle(color: Colors.red),),
            Text("***************",
            style: TextStyle(color: Colors.red),),
            Text(""),
            Text(""),

            Text("Container Name ",
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
              ),
            ),
            TextField(
              onChanged: (value) {
                cn = value;
              },
              autocorrect: false,
              textInputAction: TextInputAction.send,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.developer_mode),
                  hintText: "Enter Docker Name"),
            ),
            TextButton(
              onPressed: web,
              child: 
                Text("Launch Container",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.orange),
                        ),
            ),
              Center(
                child: Container(
                  width: 350,
                  child: Center(
                    child: Text("$output",
                    style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                    ),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(15),
                    color: Colors.orange, 
                    border: Border.all(color: Colors.green, 
                    width: 2
                  ) ,
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
