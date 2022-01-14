//? The model class is fully given. Do nothing here.

import 'package:flutter/cupertino.dart';

class Note {
  dynamic id;
  String title;
  String content;
  bool change;

  void toggle(){
    change = !change;
  }

  void chgTrue(){
    change = true;
  }

  Note({this.id = 0, this.title = '', this.content = '', this.change =true});
  Note.copy(from) : this(id: from.id, title: from.title, content: from.content, change: from.change);

  Note.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], title: json['title'], content: json['content'], change: json['change']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'content': content, 'change': change};
  
  Note copyWith({id, title, content, change}) =>
  Note (id: id ?? this.id, title: title ?? this.title, content: content ?? this.content, change: change ?? this.change);
}
