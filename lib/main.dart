import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/JR-1.jpg"),
                radius: 70.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            const Text("NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            const SizedBox(height: 10.0),
            const Text("Just Ramesh",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30.0),
            const Text("Current Ninja Level",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            const SizedBox(height: 10.0),
            Text("$ninjaLevel",
                style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 30.0),
            const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text("justrameshm@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
