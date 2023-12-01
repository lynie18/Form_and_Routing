import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to the First Page"),
        backgroundColor: Colors.pinkAccent,
        leading: Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
              ),
              keyboardType: TextInputType.name,
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                labelText: "Age",
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(name: name, age: age)),
                );
              },
              child: const Text("Submit"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(name: name, age: age)),
                );
              },
              child: const Text("Go to Second Page"),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String? name, age;

  SecondPage({this.name, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to the 2nd Page"),
        backgroundColor: Colors.pinkAccent,
        leading: Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Hello $name! You are already $age years old :(",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back to 1st Page"),
            ),
          ],
        ),
      ),
    );
  }
}
