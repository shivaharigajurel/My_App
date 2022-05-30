import 'package:flutter/material.dart';

void main() {
  runApp(TochPad());
}

class TochPad extends StatelessWidget {
  const TochPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TochPad",
      home: TochHome(),
    );
  }
}

class TochHome extends StatefulWidget {
  const TochHome({Key? key}) : super(key: key);

  @override
  State<TochHome> createState() => _TochHomeState();
}

class _TochHomeState extends State<TochHome> {
  int number = 0;
  void increseNumber() {
    setState(() {
      number++;
    });
  }

  void decriseNumber() {
    setState(() {
      number--;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: reset,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
              child: Text(
            "Your Score",
            style: TextStyle(
                fontSize: 28, color: Colors.green, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            number.toString(),
            style: TextStyle(
                fontSize: 90, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text(
                  "Increse",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                onPressed: increseNumber,
              ),
              SizedBox(
                width: 35,
              ),
              ElevatedButton(
                child: Text(
                  "Decrease",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                onPressed: decriseNumber,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
