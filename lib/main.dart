import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

int random1 = 1;
int random2 = 1;
int result = 0;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You Rolled",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "$result",
                style: TextStyle(fontSize: 100),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  roll(random1),
                  roll(random2),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              setState(() {
                random1 = Random().nextInt(6) + 1;
                random2 = Random().nextInt(6) + 1;
                result = random1 + random2;
              });
            },
            child: Icon(Icons.replay_outlined),
          ),
        ),
      ),
    );
  }
}

roll(int data) {
  switch (data) {
    case 1:
      return dice1();
    case 2:
      return dice2();
    case 3:
      return dice3();
    case 4:
      return dice4();
    case 5:
      return dice5();
    case 6:
      return dice6();
    default:
      return dice1();
  }
}

Widget dice1() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Center(
      child: ClipOval(
        child: Container(
          width: 20,
          height: 20,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget dice2() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dice3() {
  return Container(
    padding: EdgeInsets.all(10.0),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
        Center(
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dice4() {
  return Container(
    padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget dice5() {
  return Container(
    padding: EdgeInsets.all(10.0),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Center(
          child: ClipOval(
            child: Container(
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          children: [
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget dice6() {
  return Container(
    padding: EdgeInsets.all(10.0),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Center(
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: ClipOval(
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            ClipOval(
              child: Container(
                width: 20,
                height: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: ClipOval(
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
