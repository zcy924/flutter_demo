// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return BookDetail(
      json['code'] as int,
      json['msg'] as String,
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$BookDetailToJson(BookDetail instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['bid'] as String,
      json['bookname'] as String,
      json['introduction'] as String,
      json['book_info'] as String,
      json['chapterid'] as String,
      json['topic'] as String,
      json['topic_first'] as String,
      json['date_updated'] as int,
      json['author'] as String,
      json['author_name'] as String,
      json['top_class'] as String,
      json['state'] as String,
      json['readCount'] as String,
      json['praiseCount'] as String,
      json['stat_name'] as String,
      json['class_name'] as String,
      json['size'] as String,
      json['book_cover'] as String,
      json['chapterid_first'] as String,
      json['chargeMode'] as String,
      json['digest'] as String,
      json['price'] as String,
      (json['tag'] as List)?.map((e) => e as String)?.toList(),
      json['is_new'] as int,
      json['discountNum'] as int,
      json['quick_price'] as int,
      json['formats'] as String,
      json['audiobook_playCount'] as String,
      json['chapterNum'] as String,
      json['isShortStory'] as bool,
      json['userid'] as String,
      json['search_heat'] as String,
      json['num_click'] as String,
      json['recommend_num'] as String,
      json['first_cate_id'] as String,
      json['first_cate_name'] as String,
      json['reason'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'bid': instance.bid,
      'bookname': instance.bookname,
      'introduction': instance.introduction,
      'book_info': instance.bookInfo,
      'chapterid': instance.chapterid,
      'topic': instance.topic,
      'topic_first': instance.topicFirst,
      'date_updated': instance.dateUpdated,
      'author': instance.author,
      'author_name': instance.authorName,
      'top_class': instance.topClass,
      'state': instance.state,
      'readCount': instance.readCount,
      'praiseCount': instance.praiseCount,
      'stat_name': instance.statName,
      'class_name': instance.className,
      'size': instance.size,
      'book_cover': instance.bookCover,
      'chapterid_first': instance.chapteridFirst,
      'chargeMode': instance.chargeMode,
      'digest': instance.digest,
      'price': instance.price,
      'tag': instance.tag,
      'is_new': instance.isNew,
      'discountNum': instance.discountNum,
      'quick_price': instance.quickPrice,
      'formats': instance.formats,
      'audiobook_playCount': instance.audiobookPlayCount,
      'chapterNum': instance.chapterNum,
      'isShortStory': instance.isShortStory,
      'userid': instance.userid,
      'search_heat': instance.searchHeat,
      'num_click': instance.numClick,
      'recommend_num': instance.recommendNum,
      'first_cate_id': instance.firstCateId,
      'first_cate_name': instance.firstCateName,
      'reason': instance.reason
    };
