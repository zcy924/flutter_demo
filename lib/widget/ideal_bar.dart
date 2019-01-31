import 'package:flutter/material.dart';

AppBar idealBar() {
  return AppBar(
    leading: Center(
      child: Text(
        '想法',
        style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.email),
        tooltip: '消息',
        onPressed: () {},
      ),
      InkWell(
          onTap: () {
            print('dasda');
          },
          child: Container(
            margin: EdgeInsets.all(10.0),
            width: 37,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2967920487,422744784&fm=27&gp=0.jpg'))),
          ))
    ],
  );
}
