import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2967920487,422744784&fm=27&gp=0.jpg'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '卖火柴的小女孩',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                        Text(
                          '知乎颜值:888',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Text(
                      '个人主页 >',
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 1.0),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: <Widget>[Text('0'), Text('我的创作')],
                    ),
                  ),
                  Text('|'),
                  Container(
                    child: Column(
                      children: <Widget>[Text('17'), Text('关注')],
                    ),
                  ),
                  Text('|'),
                  Container(
                    child: Column(
                      children: <Widget>[Text('3'), Text('我的搜藏')],
                    ),
                  ),
                  Text('|'),
                  Container(
                    child: Column(
                      children: <Widget>[Text('1k'), Text('最近浏览')],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 5.0),),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                          ),
                        ),
                        Text('学习记录')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(
                            Icons.shop,
                            color: Colors.white,
                          ),
                        ),
                        Text('已购')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          child: Icon(
                            Icons.credit_card,
                            color: Colors.white,
                          ),
                        ),
                        Text('余额礼券')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(
                            Icons.flash_on,
                            color: Colors.white,
                          ),
                        ),
                        Text('我的Live')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Icon(
                            Icons.book,
                            color: Colors.white,
                          ),
                        ),
                        Text('我的书架')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.orangeAccent,
                          child: Icon(
                            Icons.cloud_download,
                            color: Colors.white,
                          ),
                        ),
                        Text('下载中心')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          child: Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                        ),
                        Text('付费咨询')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            Icons.volume_up,
                            color: Colors.white,
                          ),
                        ),
                        Text('活动广场')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
