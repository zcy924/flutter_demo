import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_3/model/book_list.dart';
import 'package:flutter_3/pages/detail_page.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

TabBarView homeTabView(TabController _tabController) {
  return TabBarView(
    children: <Widget>[
      HomePageItem(),
      HomePageItem(),
      HotRank(),
      HomePageItem()
    ],
    controller: _tabController,
  );
}

class HomePageItem extends StatefulWidget {
  _HomePageItemState createState() => _HomePageItemState();
}

class _HomePageItemState extends State<HomePageItem> {
  StreamController<List<Data>> ctrl = new StreamController<List<Data>>();
  ScrollController _scrollController = new ScrollController();
  List<Data> loadList = [];
  final dio = new Dio();

  Future<List<Data>> fetchPost() async {
    final response = await dio.get('https://www.apiopen.top/novelApi');
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
//      return (BookList.fromJson(json.decode(response.body))).data;
      return (BookList.fromJson(response.data)).data;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPost().then((value) {
      loadList = value;
      ctrl.sink.add(value);
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

  void _getMore() {
    fetchPost().then((value) {
      loadList.addAll(value);
      ctrl.sink.add(loadList);
    });
  }

  Future<List<Data>> refresh() async {
    return fetchPost().then((value) {
      loadList.clear();
      loadList = value;
      ctrl.sink.add(value);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ctrl.close();
  }

  void _qryDetail(Data data) {
    print('查看详情');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new DetailPage(data.bookname);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: ctrl.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Data> list = snapshot.data;
            int length = list.length;
            return RefreshIndicator(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: length + 1,
                  itemBuilder: (context, index) {
                    if (index == length) {
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return Material(
                      child: Ink(
                        color: Colors.white,
                        child: InkWell(
                            onTap: () {
                              _qryDetail(list[index]);
                            },
                            child: Container(
                              decoration: BoxDecoration(
//                                  color: Colors.white,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200], width: 4))),
                              child: Column(
                                children: <Widget>[
                                  Container(
//                                    color: Colors.white,
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            list[index].bookname,
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(
                                            child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              10.0, 5.0, 0, 0),
                                          child: Text(
                                            list[index].bookInfo,
                                            maxLines: 3,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        )),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10, 0, 10, 10),
                                          width: 130,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      list[index].bookCover))),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          '58赞同·80评论',
                                          style: TextStyle(
                                              color: Colors.grey[400]),
                                        ),
                                        Text(
                                          '···',
                                          style: TextStyle(
                                              color: Colors.grey[400]),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    );
                  },
                ),
                onRefresh: refresh);
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class HotRank extends StatefulWidget {
  _HotRankState createState() => _HotRankState();
}

class _HotRankState extends State<HotRank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[hotRank1, hotRank2, hotRank3, hotRank4, hotRank5],
      ),
    );
  }
}

Widget pageItem1 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
  child: Column(
    children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '历史上有哪些只存在于图纸上或设想中，最终无法建造出来的巨大工程?',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
              child: Text(
                '凯诺空中设计科:一直以来，雄心壮志的建筑师们，从未停止过对世界的想象，但是真正实现落实',
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              width: 130,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/002.jpg'))),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '58赞同·80评论',
              style: TextStyle(color: Colors.grey[400]),
            ),
            Text(
              '···',
              style: TextStyle(color: Colors.grey[400]),
            )
          ],
        ),
      )
    ],
  ),
);

Widget pageItem2 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
  child: Column(
    children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '《血战钢锯岭》中迫击炮炮弹在钢盔上磕一下就可以当手雷用的情节真实？',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 0),
              child: Text(
                '彩云:谢邀，影视剧中把迫击炮弹底部磕一下然后扔出去，最早的出处可能是《拯救大兵瑞恩》，',
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: 130,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('images/001.jpg'))),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '58赞同·80评论',
              style: TextStyle(color: Colors.grey[400]),
            ),
            Text(
              '···',
              style: TextStyle(color: Colors.grey[400]),
            )
          ],
        ),
      )
    ],
  ),
);

Widget hotRank1 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
  child: Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '1',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '如何评价咪蒙矩阵旗下文章《一个出生寒门的状元之死》?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  '7162 万热度',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  image: AssetImage('images/003.jpg'), fit: BoxFit.cover)),
        )
      ],
    ),
  ),
);

Widget hotRank2 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
  child: Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '2',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '如何看待库克承认iphone定价过高，苹果将重新考虑定价策略?苹果产品是会大幅度降价吗？',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  '4850 万热度',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  image: AssetImage('images/001.jpg'), fit: BoxFit.cover)),
        )
      ],
    ),
  ),
);

Widget hotRank3 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
  child: Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '3',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '如何评价咪蒙矩阵旗下文章《一个出生寒门的状元之死》?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  '7162 万热度',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  image: AssetImage('images/003.jpg'), fit: BoxFit.cover)),
        )
      ],
    ),
  ),
);

Widget hotRank4 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
  child: Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '4',
            style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 17.0),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '如何评价咪蒙矩阵旗下文章《一个出生寒门的状元之死》?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  '7162 万热度',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  image: AssetImage('images/002.jpg'), fit: BoxFit.cover)),
        )
      ],
    ),
  ),
);

Widget hotRank5 = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
  child: Container(
    padding: EdgeInsets.all(10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            '5',
            style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 17.0),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '如何评价咪蒙矩阵旗下文章《一个出生寒门的状元之死》?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  '7162 万热度',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                  image: AssetImage('images/003.jpg'), fit: BoxFit.cover)),
        )
      ],
    ),
  ),
);
