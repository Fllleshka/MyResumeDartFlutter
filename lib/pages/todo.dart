import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';

class ToDo extends StatefulWidget {

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  String _userDoDo = '';
  List todolist = [];
  List phrases = [];

  @override
  void initState() {
    super.initState();
    todolist.addAll(['Заправить кровать','Почистить зубы', 'Погулять с собакой']);
    phrases.addAll(['Ты лучший!','Отлично!','Ещё одно!','Молодец!','Великолепно!','Прекрасно!']);
  }

  String randomText(){
    String text = '';
    var rng = Random();
    var randint = rng.nextInt(phrases.length-1);
    text = phrases[randint];
    return text;
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: buildAppBar(context),
        body: buildListView(),
        floatingActionButton: buildMaterial(context)
      );

    }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Список дел',
          style: TextStyle(
            color: kTextColor,
          ),
        ),
        centerTitle: true,
        leading:
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kTextColor,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: kTextColor,
            ),
            onPressed: (){
              // Переход домой без возможности возврата
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          // Небольшой отступ справа
          SizedBox(width: kDefaultPaddin / 2)
        ],
      );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: todolist.length,
      itemBuilder: (
          BuildContext context,
          int index) {
        return Dismissible(
          key: Key(
              todolist[index]
          ),
          child: Card(
            child: ListTile(
              title: Text(
                  todolist[index]
              ),
            ),
          ),
          onDismissed: (direction){
            // Удаление справа на лево
            if((direction == DismissDirection.endToStart) || (direction == DismissDirection.startToEnd)){
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text(randomText(),
                      textAlign: TextAlign.center,
                    ),
                    content: Image.asset(
                      "../../assets/gifs/goodjob.gif",
                      height: 228,
                      width: 315,
                    ),
                  );
                },
              );
              todolist.removeAt(index);
            }
          },
        );
      },
    );
  }

  Material buildMaterial(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(
              color: kTextColor,
              width: 4.0
          ),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(1000.0),
          onTap: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text('Добавить задание'),
                    content: TextField(
                      onChanged: (String value){
                        _userDoDo = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              todolist.add(_userDoDo);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text('Добавить')
                      )
                    ],
                  );
                }
            );
          },
          child: Padding(
            padding: EdgeInsets.all(13.0),
            child: Icon(
              Icons.add,
              color: kTextColor,
            ),
          ),
        ),
      ),
    );
  }
}