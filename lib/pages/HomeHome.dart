import 'package:flutter/material.dart';

class HomeHome extends StatelessWidget {
  const HomeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( //создаем шапку приложения
        backgroundColor: Colors.green, //фон основного окна
        appBar: AppBar(
        title: Text('Список дел'),
    centerTitle: true, //центрация названия
    ),
    body: Column (
      children: [
        Text ('Главный экран', style: TextStyle (color: Colors.white24),),
        ElevatedButton(onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, '/todo', (route) => true);
        },
            child: Text('перейти далее'))
      ],
    )

    );
  }
}
