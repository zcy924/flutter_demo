import 'package:flutter/material.dart';

class IdealPage extends StatefulWidget {
  _IdealPageState createState() => _IdealPageState();
}

class _IdealPageState extends State<IdealPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[idealItem1, idealItem2, idealItem1],
      ),
    );
  }
}

Widget idealItem1 = Container(
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/head1.png'),
            radius: 20,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '沃金',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1天前',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          )
                        ],
                      ),
                      Text(
                        '···',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text(
                      '习近平：一个是生态，生态好，生态建设查干湖是标志。再一个是旅游，绿水青山冰天雪地，都是金山银山。一方面要保护生态，另一方面要发展生态旅游，相得益彰。小年这天，是冬捕队最后一次上冰作业，打完这一网，大家就要收工回家准备过年了。张文说，这些年冬捕用的渔网一直在改进，网眼从4寸变成6寸，就是要抓大放小，让4斤以下的鱼留在湖里继续生长。今年，渔场还首次划定了禁渔区。'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(11.0)),
                  child: Text(
                    '每日新闻',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  ),
);

Widget idealItem2 = Container(
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/head2.jpeg'),
            radius: 20,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Tassel',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1天前',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          )
                        ],
                      ),
                      Text(
                        '···',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text(
                      '新手菜鸟一枚，想从产品转入技术坑，目标：移动端APP开发。最近听技术达人 飞狐 说flutter beta发布了，支持跨平台APP开发，各种强大易上手，于是乎零基础入坑~话说想提高英文水平的同学，请移步flutter官网，从知道flutter到现在刚好24小时，在这里分享一点学习中遇到的小坑.'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(11.0)),
                  child: Text(
                    '每日新闻',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  ),
);
