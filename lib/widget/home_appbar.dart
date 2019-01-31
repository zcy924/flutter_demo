import 'package:flutter/material.dart';

// class HomePageAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {}
// }

AppBar homePageBar(List<String> _tabList, TabController _tabController) {
  return AppBar(
    title: Container(
      padding: const EdgeInsets.all(4.0),
      // margin: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('dasdada');
              },
              child: Container(
                child: Text(
                  '微信封锁百度红包活动',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Text(
            '|',
            style: TextStyle(color: Colors.grey[400]),
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.0),
          ),
          Icon(
            Icons.edit,
            color: Colors.grey[500],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
          ),
          Text(
            '提问',
            style: TextStyle(color: Colors.grey[500], fontSize: 18.0),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
    ),
    bottom: TabBar(
        tabs: _tabList.map((e) => Tab(text: e)).toList(),
        controller: _tabController,
        indicatorColor: Colors.green,
        indicatorWeight: 3.0,
      ),
  );
}
