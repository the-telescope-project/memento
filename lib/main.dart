import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        appBar: AppBar(
          backgroundColor: Color(0xff242424),
          elevation: 15.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/memento.png',
                width: 210,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Container(
                  width: 50,
                  height: 40,
                  child: Center(
                    child: Text(
                      "v1.1",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  )),
            ),
            SizedBox(width: 60),
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                icon: Icon(Icons.settings),
                color: Color(0xff656565),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: 50,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20,right:10,top:15,bottom: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff242424),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff656565),
                      width: 3,
                    ),
                  ),
                  width: 276,
                  height: 34,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:5,top:15,bottom: 5),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff656565),
                        width: 3,
                      ),
                    ),
                    height: 34,
                    width: 34,
                    child: Icon(Icons.search, color: Color(0xff656565),)),
              ),
              Padding(
                padding: const EdgeInsets.only(right:5,top:15,bottom: 5),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff656565),
                        width: 3,
                      ),
                    ),
                    height: 34,
                    width: 34,
                    child: Image.asset(
                'assets/filter.png',
                width: 16,
                height: 16,
              ))
                    ),
              
            ],
          ),
        ));
  }
}
