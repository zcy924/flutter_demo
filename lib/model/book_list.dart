import 'package:json_annotation/json_annotation.dart'; 
  
part 'book_list.g.dart';


@JsonSerializable()
  class BookList extends Object {

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'data')
  List<Data> data;

  BookList(this.code,this.msg,this.data,);

  factory BookList.fromJson(Map<String, dynamic> srcJson) => _$BookListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BookListToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'bid')
  String bid;

  @JsonKey(name: 'bookname')
  String bookname;

  @JsonKey(name: 'introduction')
  String introduction;

  @JsonKey(name: 'book_info')
  String bookInfo;

  @JsonKey(name: 'chapterid')
  String chapterid;

  @JsonKey(name: 'topic')
  String topic;

  @JsonKey(name: 'topic_first')
  String topicFirst;

  @JsonKey(name: 'date_updated')
  int dateUpdated;

  @JsonKey(name: 'author')
  String author;

  @JsonKey(name: 'author_name')
  String authorName;

  @JsonKey(name: 'top_class')
  String topClass;

  @JsonKey(name: 'state')
  String state;

  @JsonKey(name: 'readCount')
  String readCount;

  @JsonKey(name: 'praiseCount')
  String praiseCount;

  @JsonKey(name: 'stat_name')
  String statName;

  @JsonKey(name: 'class_name')
  String className;

  @JsonKey(name: 'size')
  String size;

  @JsonKey(name: 'book_cover')
  String bookCover;

  @JsonKey(name: 'chapterid_first')
  String chapteridFirst;

  @JsonKey(name: 'chargeMode')
  String chargeMode;

  @JsonKey(name: 'digest')
  String digest;

  @JsonKey(name: 'price')
  String price;

  @JsonKey(name: 'tag')
  List<String> tag;

  @JsonKey(name: 'is_new')
  int isNew;

  @JsonKey(name: 'discountNum')
  int discountNum;

  @JsonKey(name: 'quick_price')
  int quickPrice;

  @JsonKey(name: 'formats')
  String formats;

  @JsonKey(name: 'audiobook_playCount')
  String audiobookPlayCount;

  @JsonKey(name: 'chapterNum')
  String chapterNum;

  @JsonKey(name: 'isShortStory')
  bool isShortStory;

  @JsonKey(name: 'userid')
  String userid;

  @JsonKey(name: 'search_heat')
  String searchHeat;

  @JsonKey(name: 'num_click')
  String numClick;

  @JsonKey(name: 'recommend_num')
  String recommendNum;

  @JsonKey(name: 'first_cate_id')
  String firstCateId;

  @JsonKey(name: 'first_cate_name')
  String firstCateName;

  @JsonKey(name: 'reason')
  String reason;

  Data(this.bid,this.bookname,this.introduction,this.bookInfo,this.chapterid,this.topic,this.topicFirst,this.dateUpdated,this.author,this.authorName,this.topClass,this.state,this.readCount,this.praiseCount,this.statName,this.className,this.size,this.bookCover,this.chapteridFirst,this.chargeMode,this.digest,this.price,this.tag,this.isNew,this.discountNum,this.quickPrice,this.formats,this.audiobookPlayCount,this.chapterNum,this.isShortStory,this.userid,this.searchHeat,this.numClick,this.recommendNum,this.firstCateId,this.firstCateName,this.reason,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
