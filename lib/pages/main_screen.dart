import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Шапка
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Developer Fleyser VV'),
        centerTitle: true,
      ),
      // Тело
      body: Container(
        // Прописываем градиент background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            //colors: [Color(0xffee0000)]
            colors: [Colors.purple.shade700,Colors.blue.shade700]
          ),
        ),
      ),
      // Нижняя панель
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [BottomNavigationBarItem(
          icon: Icon(
              Icons.call,
              color: Colors.white,
          ),
          label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.camera,
                color: Colors.white,
            ),
            label: 'Camera',
            backgroundColor: Colors.white,
          ),
        ]
      ),
    );
  }
}
