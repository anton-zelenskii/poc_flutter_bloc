import 'package:flutter/material.dart';

import 'atlas_form.dart';
import 'atlas_status.dart';

import '../BLoC/controller.dart';

class AtlasLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Bloc controller = Bloc();
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: SizedBox(
              width: 400,
              child: Card(
                  child: Column(children: [
                AtlasStatus(controller),
                AtlasForm(controller),
              ]))),
        ));
  }
}
