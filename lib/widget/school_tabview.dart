import 'package:flutter/material.dart';

TabBarView schoolTabView(TabController _schoolTabController) {
  return TabBarView(children: <Widget>[
    Classroom(),
    Center(
      child: Text(
        '读书会',
        style: TextStyle(fontSize: 50.0),
      ),
    ),
  ], controller: _schoolTabController);
}

class Classroom extends StatefulWidget {
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[classroom1],
      ),
    );
  }
}

Widget classroom1 = Container(
    padding: EdgeInsets.all(10.0),
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
    child: Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '释放压力，提升专注的正念训练',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  Text('------用更清醒的大脑面对每一天----'),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      '限时五折',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/lang2.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5.0)),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[300],width: 0.5))),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                      Text(
                        '职场成长',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      Text(
                        '心理情感',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.school,
                        color: Colors.purpleAccent,
                        size: 40,
                      ),
                      Text(
                        '培训考试',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.mouse,
                        color: Colors.orangeAccent,
                        size: 40,
                      ),
                      Text(
                        '互联网',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.pie_chart,
                        color: Colors.greenAccent,
                        size: 40,
                      ),
                      Text(
                        '商学院',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.explore,
                        color: Colors.purple,
                        size: 40,
                      ),
                      Text(
                        '科技科普',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.tealAccent,
                        size: 40,
                      ),
                      Text(
                        '生活研修',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      Text(
                        '健康学堂',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.signal_wifi_4_bar,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Text(
                        '人文艺术',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.assignment_turned_in,
                        color: Colors.teal,
                        size: 40,
                      ),
                      Text(
                        '任务中心',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ));
