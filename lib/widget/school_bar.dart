import 'package:flutter/material.dart';

AppBar schoolBar(TabController _idealTabController,List<String> _idealTabList) {
  return AppBar(
    leading: InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: (){print('xiangfatouxiang');},
      child: Padding(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2967920487,422744784&fm=27&gp=0.jpg'),
        ),
        padding: EdgeInsets.all(10.0),
      ),
    ),
    title: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '开通会员',
            style: TextStyle(
                color: Colors.yellowAccent, fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          Text(
            '课程随意听，好书任意读',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          )
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () {
          print('nihao');
        },
      ),
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {
          print('dasdaaa');
        },
      )
    ],
    bottom: TabBar(
        tabs: _idealTabList.map((e) => Tab(text: e)).toList(),
        controller: _idealTabController,
        indicatorColor: Colors.green,
        indicatorWeight: 3.0,
      ),
  );
}
