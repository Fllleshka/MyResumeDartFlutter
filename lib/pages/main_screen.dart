import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List FIOlist = [];

  @override
  void initState() {
    super.initState();

    FIOlist.addAll(['Флейснер', 'Владислав','Всеволодович']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Шапка
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Developer Fleyser VV'),
        centerTitle: true,
      ),
      // Тело
      body:
      Container(
        height: 105,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          itemCount: FIOlist.length,
          itemBuilder: (BuildContext context, int index){
            return ElevatedButton(
                onPressed: (){},
                child: Text(FIOlist[index]),
                style: ElevatedButton.styleFrom(
                  //fixedSize: Size(240, 80),
                  primary: Colors.blueAccent,
                  //padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
            );
          },
        ),
        // Прописываем градиент background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.purple.shade200,Colors.blue.shade200]
          ),
        ),
      ),
      // Нижняя панель
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
                Icons.call,
            ),
                label: 'Call me',
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
                Icons.contact_mail,
              ),
                label: 'E-mail me',
            ),
        ]
      ),*/
    );
  }
}
