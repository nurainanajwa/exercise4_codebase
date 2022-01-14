//TODO Complete the implementation of this class
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:exercise4/screens/main/main_viewmodel.dart';
import 'package:exercise4/models/note.dart';
import 'package:provider/provider.dart';
import '../view.dart';

/// `MainFloat` is show the Floating Action Button (i.e, the Add or the + button)
///
class MainFloat extends StatelessWidget {
  const MainFloat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return View<MainViewmodel>(
      shouldRebuild: false,
      builder: (_, vm, __) {
        print('Build HomeFloat + button');
        return FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: 'Add a new note',
            onPressed: () =>
                vm.addNote(Note(title: 'Note title', content: 'Note content')));
      },
    );
  }
}
