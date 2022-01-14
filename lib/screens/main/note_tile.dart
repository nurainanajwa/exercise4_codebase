//TODO Complete the implementation of this class

import 'package:flutter/material.dart';
import 'package:exercise4/models/note.dart';
import 'package:exercise4/screens/main/main_viewmodel.dart';
import 'package:exercise4/screens/main/note_editor_tile.dart';
import 'package:exercise4/screens/view.dart';
import 'package:provider/provider.dart';

/// `NoteTile` is a custom ListTile widget.
/// What it should do basically only to refactor the code
/// to make the `MainBody` much cleaner.
/// This widget will be used for normal building of
/// the list tile on the `MainBody' (i.e, without any editing)
///
class NoteTile extends StatelessWidget {
  const NoteTile(this._index);
  final int _index;

  @override
  Widget build(BuildContext context) {
      return SelectorView<MainViewmodel, Note>(
            selector: (_, vm) => vm.getNote(_index),
            builder: (_, vm, note, ___) {
            print ('Build Listile $_index');

      return note.edit == true
      ? ListTile(
      title: Text('${note.title}'),
      subtitle: Text('${note.content}'),
      onLongPress: () => vm.editMode(_index),
      onTap: () {
        vm.tap(_index);
        vm.updateNote(
          id: vm.getNote(_index).id,
          data: Note(
            title: vm.getNote(_index).title,
            content: vm.getNote(_index).content));
      })
      :NoteEditorTile(_index);
},
      );
  }
}