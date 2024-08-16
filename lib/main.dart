import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(  
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Login page'),
              Container(
                  
                  height: 350, //hard coded
                  width: 300, //hard coded
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: <Widget>[
                      
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 10, height: 1),
                          Text("Email"),
                        ],
                      ),
                      SizedBox(
                        width: 285,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Align(heightFactor: 1,
                            widthFactor: 1,
                              child: Icon(Icons.mail_rounded),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter Email',
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 10, height: 1),
                          Text('Password'),
                        ],
                      ),SizedBox(
                        width: 285,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Align(heightFactor: 1,
                            widthFactor: 1,
                              child: Icon(Icons.key_rounded),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text('Forgot password?'),
                      SizedBox(height: 18),
                     SizedBox(width: 285,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)
                          ),
                         backgroundColor: Colors.grey,
                         
                        ),
                        onPressed: () {print("Check login");},
                        child: Text('Login'),

                      ),
                      
                     ),
                      SizedBox(height: 18),
                     SizedBox(width: 285,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)
                          ),
                         backgroundColor: Colors.grey,
                         
                        ),
                        onPressed: () {print("Register fragment");},
                        child: Text('Register'),

                      ),
                      
                     ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
