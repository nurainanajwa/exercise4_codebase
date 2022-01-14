//TODO Complete the implementation of this class
import 'dart:math';
import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';
import 'package:exercise4/models/note.dart';
import 'package:exercise4/screens/main/main_viewmodel.dart';
import 'package:exercise4/screens/view.dart';

/// `NoteEditorTile` is a custom ListTile widget that should be
/// shown when a note is under editing.
///
class NoteEditorTile extends StatelessWidget {
  const NoteEditorTile(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
      return SelectorView<MainViewmodel, Note>(
            selector: (_, vm) => vm.getNote(index),
            builder: (_, vm, note, ___) {
            print ('Build Listile $index');

    return ListTile(
      title: CustomTextField(
        initialValue: '${note.title}',
        onChanged: (value) {
          vm.getNote(index).title = value;
        },
      ),
      subtitle: CustomTextField(
        maxLines: 3,
        initialValue: '${note.content}',
        onChanged: (value) {
          vm.getNote(index).title = value;
        },
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.blue,
        ),
        onPressed: () => vm.removeNote(vm.getNote(index) .id) ,
      ),
    );
            });




  }
}
