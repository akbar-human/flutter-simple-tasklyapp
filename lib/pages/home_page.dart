import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage();

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{
  late double _deviceHeight, _deviceWidth;

  _HomePageState();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Text(
            "Tasklyst",
            style: TextStyle(fontSize: 25),
          ),
      ),
      body: _taskList(),
    );
  }

  Widget _taskList(){
    return ListView(
      children: [
        ListTile(
          title: const Text(
            "Coba list 1",
            style: TextStyle(
              decoration: TextDecoration.lineThrough
            ),
          ),
          subtitle: Text(DateTime.now().toString()),
        )
      ],
    );
  }
}