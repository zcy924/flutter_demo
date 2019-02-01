import 'package:flutter/material.dart';
import 'package:flutter_3/model/book_detail.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:dio/dio.dart';
import 'dart:convert';

class DetailPage extends StatefulWidget {
  final String bookName;

  DetailPage(this.bookName) : super();

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String _bookName;
  StreamController<BookDetail> _ctrl = new StreamController<BookDetail>();
  final dio = new Dio();

  Future<List<Data>> _getDetail() async {
    Response response;
    response = await dio.get('https://www.apiopen.top/novelInfoApi',
        queryParameters: {"name": _bookName});
    return (BookDetail.fromJson(response.data)).data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookName = widget.bookName;
//    _getDetail().then((List<Data> value){
//      _ctrl.sink.add();
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_bookName),
        ),
        body: Container(
            child: Center(
          child: Text(_bookName),
        )));
  }
}
