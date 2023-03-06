import 'package:flutter/material.dart';
import 'package:flutter_app/cards.dart';
import 'package:flutter_app/todo.dart';
import 'package:flutter_app/calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ToDo> newToDoList = List.from(toDoList);
  onItemSearch(String value) {
    setState(() {
      newToDoList =
          toDoList.where((element) => element.title!.contains(value)).toList();
    });
  }

  int index = 0;
  String title = 'Список дел';
  TextEditingController searchController = TextEditingController();
  bool titleAppBar = false;

  @override
  Widget build(BuildContext context) {
    Widget listSearchWidget(BuildContext context) {
      return ListView(
        children: newToDoList.map(
          (e) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.amber[200],
                leading: Text(
                  e.id.toString(),
                ),
                title: Text(e.title!),
                subtitle: Text(e.discription!),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            );
          },
        ).toList(),
      );
    }

    final list = [
      listSearchWidget(context),
      const CalendarPage(),
      const CardsPage(),
    ];

    AppBar appBarSearch = AppBar(
      centerTitle: true,
      title: TextField(
        decoration: const InputDecoration(
          label: Text('Input'),
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              searchController.clear();
              titleAppBar = false;
            });
          },
          icon: const Icon(Icons.close),
        )
      ],
    );
    AppBar appBar = AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              titleAppBar = true;
            });
          },
          icon: const Icon(Icons.search),
        )
      ],
    );
    return Scaffold(
      appBar: titleAppBar ? appBarSearch : appBar,
      body: list.elementAt(index),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 236, 179),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Text(
                  'MENU',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              title: const Text('Cards'),
              onTap: () {
                Navigator.popAndPushNamed(
                  context,
                  '/cards',
                );
              },
            ),
            ListTile(
              title: const Text('Desktop'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/desktop');
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'To-Do List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            )
          ],
          onTap: (value) {
            setState(() {
              index = value;
              if (index == 0) {
                title = 'To-Do List';
              } else {
                title = 'Calendar';
              }
            });
          }),
    );
  }
}
