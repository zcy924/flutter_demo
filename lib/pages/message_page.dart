import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Colors.grey[400]))),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(10.0),
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                          image: AssetImage('images/head1.png'))),
                ),
                title: Text(
                  '私信',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('知乎小管家:亲爱的 卖菇凉的小货车'),
                trailing: Icon(Icons.keyboard_arrow_right),
              )),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.grey[400]))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '通知列表',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '全部已读',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                      ),
                      Icon(
                        Icons.done_all,
                        color: Colors.grey,
                        size: 25.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(color: Colors.white,border: Border(bottom: BorderSide(color: Colors.grey[300]))),
              child: ListTile(
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                          image: AssetImage('images/head1.png'))),
                ),
                title: Text(
                  '初级前端工程师新增了3篇文章',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '知乎小管家:亲爱的 卖菇凉的小货车',
                      style: TextStyle(color: Colors.black),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('两天前',style: TextStyle(color: Colors.grey[400],fontSize: 12.0),)
                  ],
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                isThreeLine: true,
              )),
              Container(
              decoration: BoxDecoration(color: Colors.white,border: Border(bottom: BorderSide(color: Colors.grey[300]))),
              child: ListTile(
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                          image: AssetImage('images/head3.jpg'))),
                ),
                title: Text(
                  'W3cplus的故事 新增了两篇文章',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '知乎小管家:亲爱的 卖菇凉的小货车',
                      style: TextStyle(color: Colors.black),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('两天前',style: TextStyle(color: Colors.grey[400],fontSize: 12.0),)
                  ],
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                isThreeLine: true,
              )),
              Container(
              decoration: BoxDecoration(color: Colors.white,border: Border(bottom: BorderSide(color: Colors.grey[300]))),
              child: ListTile(
                leading: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                          image: AssetImage('images/head2.jpeg'))),
                ),
                title: Text(
                  '初级前端工程师新增了3篇文章',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '知乎小管家:亲爱的 卖菇凉的小货车',
                      style: TextStyle(color: Colors.black),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('两天前',style: TextStyle(color: Colors.grey[400],fontSize: 12.0),)
                  ],
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                isThreeLine: true,
              ))
        ],
      ),
    );
  }
}
