//? The model class is fully given. Do nothing here.

import 'package:flutter/cupertino.dart';

class Note {
  dynamic id;
  String title;
  String content;
  bool edit;

  void toggle(){
    edit = !edit;
  }

  void editNote(){
    edit = true;
  }

  Note({this.id = 0, this.title = '', this.content = '', this.edit =true});
  Note.copy(from) : this(id: from.id, title: from.title, content: from.content, edit: from.edit);

  Note.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], title: json['title'], content: json['content'], edit: json['edit']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'content': content, 'edit': edit};
  
  Note copyWith({id, title, content, change}) =>
  Note (id: id ?? this.id, title: title ?? this.title, content: content ?? this.content, edit: change ?? this.edit);
}
