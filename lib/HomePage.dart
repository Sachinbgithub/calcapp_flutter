import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Result :$sum",
            style: const TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Enter Number 1"),
            controller: t1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Enter Number 2"),
            controller: t2,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  doAdd();
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //  const SnackBar(content: Text('Addition')));
                },
                child: const Text("+"),
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  doSub();
                },
                child: const Text("-"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  doMul();
                },
                child: const Text("*"),
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  doDiv();
                },
                child: const Text("/"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
