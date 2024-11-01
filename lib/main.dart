import 'package:flutter/material.dart';


void main() {
  runApp(const PointerCounter());
}

class PointerCounter extends StatefulWidget {
  const PointerCounter({super.key});

  @override
  State<PointerCounter> createState() => _PointerCounterState();
}

class _PointerCounterState extends State<PointerCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('PointerCounter'),
            backgroundColor: Colors.amber.shade300,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(fontSize: 200),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 1 point')),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 2 point')),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamAPoints += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 3 point')),
                      ],
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(fontSize: 200),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                             setState(() {
                               teamBPoints++;
                             });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 1 point')),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 2 point')),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBPoints += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(8),
                              minimumSize: const Size(150, 50),
                              backgroundColor: Colors.amber.shade300,
                            ),
                            child: const Text('Add 3 point')),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = 0;
                        teamBPoints = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8),
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.amber.shade300,
                    ),
                    child: const Text('RESTART')),
              ],
            ),
          )),
    );
  }
}
