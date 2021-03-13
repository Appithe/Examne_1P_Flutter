import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final _style = new TextStyle(fontSize: 20, color: Colors.black38);
  String _player0 = "";
  String _player1 = "";
  String _player2 = "";
  String _player3 = "";
  String _player4 = "X";
  String _player5 = "";
  String _player6 = "";
  String _player7 = "";
  String _player8 = "";
  int _positionX = 1;
  int _positionY = 1;

  void movePlayer() {
    if (_positionX == 0 && _positionY == 0) {
      _player0 = "X";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 1 && _positionY == 0) {
      _player0 = "";
      _player1 = "X";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 2 && _positionY == 0) {
      _player0 = "";
      _player1 = "";
      _player2 = "X";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 0 && _positionY == 1) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "X";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 1 && _positionY == 1) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "X";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 2 && _positionY == 1) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "X";
      _player6 = "";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 0 && _positionY == 2) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "X";
      _player7 = "";
      _player8 = "";
    }
    if (_positionX == 1 && _positionY == 2) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "X";
      _player8 = "";
    }
    if (_positionX == 2 && _positionY == 2) {
      _player0 = "";
      _player1 = "";
      _player2 = "";
      _player3 = "";
      _player4 = "";
      _player5 = "";
      _player6 = "";
      _player7 = "";
      _player8 = "X";
    }
  }

  void moveToUp() => {
        setState(() {
          for (int X = 0; X < 3; X++) {
            for (int Y = 0; Y < 3; Y++) {
              if (_positionX == X && _positionY == Y) {
                _positionY--;
                movePlayer();
                if (_positionY == -1) {
                  _positionX = 1;
                  _positionY = 1;
                  movePlayer();
                }
                debugPrint('btn arriba: $_positionX ,$_positionY');
                break;
              }
            }
          }
        })
      };
  void moveToDown() {
    setState(() {
      for (int X = 0; X < 3; X++) {
        for (int Y = 0; Y < 3; Y++) {
          if (_positionX == X && _positionY == Y) {
            _positionY++;
            movePlayer();
            if (_positionY == 3) {
              _positionX = 1;
              _positionY = 1;
              movePlayer();
            }
            debugPrint('btn abajo: $_positionX ,$_positionY');
            break;
          }
        }
      }
    });
  }

  void moveToRight() {
    setState(() {
      for (int Y = 0; Y < 3; Y++) {
        for (int X = 0; X < 3; X++) {
          if (_positionX == X && _positionY == Y) {
            _positionX++;
            movePlayer();
            if (_positionX == 3) {
              _positionX = 1;
              _positionY = 1;
              movePlayer();
            }
            debugPrint('btn derecha: $_positionX ,$_positionY');
            break;
          }
        }
      }
    });
  }

  void moveToLeft() {
    setState(() {
      for (int Y = 0; Y < 3; Y++) {
        for (int X = 0; X < 3; X++) {
          if (_positionX == X && _positionY == Y) {
            _positionX--;
            movePlayer();
            if (_positionX == -1) {
              _positionX = 1;
              _positionY = 1;
              movePlayer();
            }
            debugPrint('btn izquierda: $_positionX ,$_positionY');
            break;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Examen_1P_TriFuerza"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.count(
                  crossAxisCount: 3,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player0", //x= 0, y= 0
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player1", //x= 1, y= 0
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player2", //x= 2, y= 0
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player3", //x= 0, y= 1
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player4", //x= 1, y= 1
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player5", //x= 2, y= 1
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player6", //x= 0, y= 2
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player7", //x= 1, y= 2
                        style: _style,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        "$_player8", //x= 2, y= 2
                        style: _style,
                      )),
                    ),
                  ]),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Colors.blue[100],
                      onPressed: moveToUp,
                      child: Text('arriba')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Colors.blue[100],
                      onPressed: moveToLeft,
                      child: Text('izquierda')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Colors.blue[100],
                      onPressed: moveToRight,
                      child: Text('derecha')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Colors.blue[100],
                      onPressed: moveToDown,
                      child: Text('abajo')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
