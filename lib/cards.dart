import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.35,
                        child: const Card(
                          color: Color.fromARGB(255, 255, 224, 130),
                          child: HorizontalAccount(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Divider(
                color: Colors.amber,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Center(
                        child: SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.7 * 0.25,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: const Card(
                            color: Color.fromARGB(255, 255, 224, 130),
                            child: VerticalAccount(),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalAccount extends StatelessWidget {
  const VerticalAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Card(
        color: const Color.fromARGB(255, 255, 236, 179),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Icon(
              Icons.account_circle,
              color: Colors.amber,
              size: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Surname:                                             ',
                    style: TextStyle(color: Color.fromARGB(255, 255, 179, 0))),
                Text('Name:                                                   ',
                    style: TextStyle(color: Color.fromARGB(255, 255, 179, 0)))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HorizontalAccount extends StatelessWidget {
  const HorizontalAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Card(
        color: const Color.fromARGB(255, 255, 236, 179),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.amber,
                size: 50,
              ),
              Text('Surname:                                             ',
                  style: TextStyle(color: Color.fromARGB(255, 255, 179, 0))),
              Text('Name:                                                   ',
                  style: TextStyle(color: Color.fromARGB(255, 255, 179, 0)))
            ],
          ),
        ),
      ),
    );
  }
}
