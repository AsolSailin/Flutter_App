import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoPage());
}

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: toDoList.map(
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
}

class ToDo {
  int? id;
  String? title;
  String? discription;
  ToDo({
    this.id,
    this.title,
    this.discription,
  });
}

List<ToDo> toDoList = [
  ToDo(
    id: 1,
    title: 'HEllO',
    discription: 'HelloHelloHello',
  ),
  ToDo(
    id: 2,
    title: 'Monkey',
    discription: 'MonkeyMonkeyMonkey',
  ),
  ToDo(
    id: 3,
    title: 'Banana',
    discription: 'BananaBananaBanana',
  )
];
