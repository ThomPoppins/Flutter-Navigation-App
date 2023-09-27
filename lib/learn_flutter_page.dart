import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  // Create a boolean variable to store the switch state
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galaxies"),
        // Unset the default back button in the appbar
        automaticallyImplyLeading: false,
        // Override the back button with a custom one
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Pop the current route from the stack
            // This will return to the previous page in the navigation stack
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/galaxy.jpg"),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.deepPurple[900],
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Galaxies here",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isSwitch ? Colors.green : Colors.deepPurple[900],
              ),
              onPressed: () {
                debugPrint("Elevated button");
              },
              child: const Text("Elevated button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined button");
              },
              child: const Text("Outlined button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text button");
              },
              child: const Text("Text button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Gesture detector");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.deepPurple[900],
                  ),
                  const Text("This is a row Widget spaced evenly"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.deepPurple[900],
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              },
            ),
            Image.network(
                "https://static9.depositphotos.com/1000401/1156/i/600/depositphotos_11564434-stock-photo-nebula-gas-cloud-in-deep.jpg")
          ],
        ),
      ),
    );
  }
}
