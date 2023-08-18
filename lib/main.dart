import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(
                size: 80,
                Icons.android,
                color: darkMode ? Colors.white : Colors.black,
              ),
              decoration: BoxDecoration(
                color: darkMode ? Colors.grey[850] : Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: darkMode
                          ? Colors.grey.shade900
                          : Colors.grey.shade500,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: darkMode ? Colors.grey.shade800 : Colors.white,
                      offset: const Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0)
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  child: const Text(
                    "Black",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                TextButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  child: const Text(
                    "White",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
