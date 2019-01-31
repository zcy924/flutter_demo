import 'package:flutter/material.dart';

AppBar personBar() {
  return AppBar(
    title: Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              Padding(padding: EdgeInsets.only(left: 10.0),),
              Text(
                '搜索知乎内容',
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}
