import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Главный экран',
        style: TextStyle(
          color: kTextColor,
        ),
      ),
      centerTitle: true,
      /*leading:
      IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),*/
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
}


/*import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blueAccent.shade200,
        title: const Text('Flutter разработчик Флейснер В.В.',
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellow,
          )),
        centerTitle: true,
      ),
      // Тело
      body:
      Container(
        //height: 105,
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              Divider(height: 20),
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          itemCount: FIOlist.length,
          itemBuilder: (BuildContext context, int index){
            return ElevatedButton(
                onPressed: (){},
                child: Text(
                  FIOlist[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                  ),),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(120, 50),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.call,
                color: Colors.white,
            ),
                label: 'Call me',

            ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.mail,
                color: Colors.white,
              ),
                label: 'E-mail me',
            ),
        ]
      ),
    );
  }
}*/
