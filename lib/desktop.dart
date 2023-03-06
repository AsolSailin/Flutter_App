import 'package:flutter/material.dart';

void main() {
  runApp(const DesktopPage());
}

class DesktopPage extends StatefulWidget {
  const DesktopPage({
    super.key,
  });

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Desktop'),
      ),
      bottomNavigationBar: SizedBox(
        height: 130,
        child: Card(
          color: const Color.fromARGB(255, 255, 236, 179),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Button(),
              Button(),
              Button(),
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 236, 179),
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 236, 179),
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 236, 179),
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 236, 179),
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                  Column(
                    children: const [
                      Button(),
                      Text('Banana',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 179, 0))),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.amber,
                height: 15,
                indent: 35,
                endIndent: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: ElevatedButton(
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 255, 224, 130)),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/banana.png",
                  width: 45,
                  height: 45,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
