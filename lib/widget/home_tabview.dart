import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          pageItem1,
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
          ),
          pageItem2,
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
          ),
          pageItem1
        ],
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
                color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 17.0),
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
                color: Colors.orangeAccent, fontWeight: FontWeight.bold, fontSize: 17.0),
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
