import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          // เทียบได้กับแท็ก <div> ของ HTML
          decoration: BoxDecoration(
              color: Colors.yellow.shade50,
              //border: Border.all(width: 5.0, color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(2.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ]),
          alignment: Alignment.center,
          child: Center(

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/guess_logo.png', width: 100),
                      RichText(

                          text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: " Guess",
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.deepOrangeAccent)
                          ),
                          TextSpan(
                              text: "\n Number",
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.deepOrange,
                                  )
                          )
                        ]
                        ),
                      ),

                    ]
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(

                        //  labelText: 'Input Number',

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
            child: OutlinedButton(
                        child: Text('RANDOM'),
                        onPressed: () {
                          // โค้ดที่จะทำงานเมื่อกดปุ่ม
                        },
                      ),
                    ),

                  ],

              ),

          ),


        ),
      ),
    );
  }
}