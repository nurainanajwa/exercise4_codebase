//TODO Complete the implementation of this class

import 'package:exercise4/screens/main/main_viewmodel.dart';
import 'package:exercise4/screens/view.dart';
import 'package:flutter/material.dart';

/// MainAppBar is to show the application bar
///
class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My Notes'),
      actions: [
        SelectorView<MainViewmodel, int>(
            selector: (_, vm) => vm.dataCount,
            builder: (_, vm, __, ___) {
              return CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: Text(
                  '${vm.dataCount}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              );
            }),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
