import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage(), debugShowCheckedModeBanner: false);
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  final GlobalKey<FormState> _mykey = GlobalKey<FormState>();

  var myresult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Enter first numvbr'),
            Form(
              key: _mykey,
              child: Column(
                children: [
                  TextFormField(
                    controller: firstNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter first number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            Text('Enter Second number'),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: secondNumberController,
                    decoration: InputDecoration(
                      labelText: 'Enter Second number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: sum, child: Text('+')),
                ElevatedButton(onPressed: sub, child: Text('-')),
                ElevatedButton(onPressed: multi, child: Text('/')),
                ElevatedButton(onPressed: div, child: Text('*')),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'The result of the two number is: ${myresult}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void sum() {
    double? firstnumber = double.tryParse(firstNumberController.text);
    double? secondnumber = double.tryParse(secondNumberController.text);

    if (firstnumber == null || secondnumber == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please enter valid numbers')));
      return;
    }

    double result = firstnumber + secondnumber;

    setState(() {
      myresult = result.toString();
    });
  }

  void sub() {
    double? firstnumber = double.tryParse(firstNumberController.text);
    double? secondnumber = double.tryParse(secondNumberController.text);

    if (firstnumber == null || secondnumber == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please enter valid numbers')));
      return;
    }

    double result = firstnumber - secondnumber;

    setState(() {
      myresult = result.toString();
    });
  }

  void multi() {
    double? firstnumber = double.tryParse(firstNumberController.text);
    double? secondnumber = double.tryParse(secondNumberController.text);

    if (firstnumber == null || secondnumber == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please enter valid numbers')));
      return;
    }

    double result = firstnumber * secondnumber;

    setState(() {
      myresult = result.toString();
    });
  }

  void div() {
    double? firstnumber = double.tryParse(firstNumberController.text);
    double? secondnumber = double.tryParse(secondNumberController.text);

    if (firstnumber == null || secondnumber == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please enter valid numbers')));
      return;
    }

    double result = firstnumber / secondnumber;

    setState(() {
      myresult = result.toString();
    });
  }
}
