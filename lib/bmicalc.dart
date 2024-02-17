import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {
  TextEditingController Weight = TextEditingController();
  TextEditingController Height = TextEditingController();
  double result = 0;
  double height = 0;
  double weight = 0;
  void calculate() {
    weight = double.parse(Height.text);
    height = double.parse(Weight.text);
    result = weight / (height * height);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: Height,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Height'),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: Weight,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                hintText: 'weight'),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                calculate();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black12,
              ),
              child: Text("Calculate")),
          SizedBox(
            height: 20,
          ),

      Text('Results: $result'),
        ],
      ),
    );
  }
}
