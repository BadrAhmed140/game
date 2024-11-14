import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:math";

String win = "Rock";
int scorPlayer = 0;
int scorComputer = 0;
String imagePlayer =
    "https://upload.wikimedia.org/wikipedia/commons/a/af/Rock-paper-scissors_%28paper%29.png";
var imageComputer =
    "https://upload.wikimedia.org/wikipedia/commons/a/af/Rock-paper-scissors_%28paper%29.png";

List images = [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Rock-paper-scissors_%28rock%29.png/600px-Rock-paper-scissors_%28rock%29.png",
  "https://upload.wikimedia.org/wikipedia/commons/a/af/Rock-paper-scissors_%28paper%29.png",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Rock-paper-scissors_%28scissors%29.png/1200px-Rock-paper-scissors_%28scissors%29.png"
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(heigh);
    print(width);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.green),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SafeArea(
              child: Text(
                "Computer",
                style: TextStyle(fontSize: 30),
              ),
            ),
             SizedBox(
              height: heigh*0.015,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2)),
              height:heigh*0.22,
              width: width*0.45,
              child: Image.network(imageComputer.toString()),
            ),
             SizedBox(
              height: heigh*0.015,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Score :$scorComputer",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
             SizedBox(
              height:heigh* 0.010,
            ),
            Container(
              width: width*0.95,
              height: heigh*0.040,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "$win wins",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  )),
            ),
             SizedBox(
              height: heigh*0.015,
            ),
            const Text("Player", style: TextStyle(fontSize: 30)),
             SizedBox(
              height:heigh* 0.015,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2)),
              height:heigh*0.22,
              width: width*0.45,
              child: Image.network(imagePlayer),
            ),
             SizedBox(
              height: heigh*0.010,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Score :$scorPlayer",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
             SizedBox(
              height:heigh* 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      var _random = new Random();
                      imageComputer = images[_random.nextInt(images.length)];
                      imagePlayer = images[0];
                      if (imageComputer == images[0]) {
                        win = "draw";
                      } else {
                        win = "Rock";
                        scorPlayer++;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all(width: 2)),
                    height:heigh*0.15,
                    width: width*0.30,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Rock-paper-scissors_%28rock%29.png/600px-Rock-paper-scissors_%28rock%29.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      var _random = new Random();
                      imageComputer = images[_random.nextInt(images.length)];
                      imagePlayer = images[1];
                      if (imageComputer == images[1]) {
                        win = "draw";
                      } else if (imageComputer == images[0]) {
                        win = "Rock";
                        scorComputer++;
                      } else if (imageComputer == images[2]) {
                        win = "scissors";
                        scorComputer++;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all(width: 2)),
                    height:heigh*0.15,
                    width: width*0.30,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/a/af/Rock-paper-scissors_%28paper%29.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      var _random = new Random();
                      imageComputer = images[_random.nextInt(images.length)];
                      imagePlayer = images[2];
                      if (imageComputer == images[2]) {
                        win = "draw";
                      } else if (imageComputer == images[0]) {
                        win = "Rock";
                        scorComputer++;
                      } else if (imageComputer == images[1]) {
                        win = "scissors";
                        scorPlayer++;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all(width: 2)),
                    height:heigh*0.15,
                    width: width*0.30,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Rock-paper-scissors_%28scissors%29.png/1200px-Rock-paper-scissors_%28scissors%29.png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
