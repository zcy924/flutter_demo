import 'package:flutter/material.dart';
import 'package:flutter_3/pages/ideal_page.dart';
import 'package:flutter_3/pages/message_page.dart';
import 'package:flutter_3/pages/person_page.dart';
import 'package:flutter_3/widget/home_appbar.dart';
import 'package:flutter_3/widget/home_tabview.dart';
import 'package:flutter_3/widget/ideal_bar.dart';
import 'package:flutter_3/widget/message_appbar.dart';
import 'package:flutter_3/widget/person_bar.dart';
import 'package:flutter_3/widget/school_bar.dart';
import 'package:flutter_3/widget/school_tabview.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> _tabList = ['关注', '推荐', '热榜', '视频'];
  List<String> _schoolTabList = ['课堂', '读书会'];
  TabController _tabController;
  TabController _schoolTabController;
  int _currentIndex = 0;
  Widget appBar;
  Widget body;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: _tabList.length, vsync: this);
    _schoolTabController =
        new TabController(length: _schoolTabList.length, vsync: this);
    _chCurrentIndex(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        // body: body,
        body: Container(
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: body,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('首页·')),
            BottomNavigationBarItem(
                icon: Icon(Icons.public), title: Text('想法')),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), title: Text('大学·')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text('通知')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('我的')),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _chCurrentIndex,
        ));
  }

  _chCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
      _chRoutePage();
    });
  }

  _chRoutePage() {
    switch (_currentIndex) {
      case 0:
        appBar = homePageBar(_tabList, _tabController);
        body = homeTabView(_tabController);
        break;
      case 1:
        appBar = idealBar();
        body = IdealPage();
        break;
      case 2:
        appBar = schoolBar(_schoolTabController, _schoolTabList);
        body = schoolTabView(_schoolTabController);
        break;
      case 3:
        appBar = messageBar();
        body = new MessagePage();
        break;
      case 4:
        appBar = personBar();
        body = new PersonPage();
        break;
      default:
        appBar = homePageBar(_tabList, _tabController);
        body = homeTabView(_tabController);
    }
  }
}
