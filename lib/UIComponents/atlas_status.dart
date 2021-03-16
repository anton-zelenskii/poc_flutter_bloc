import 'package:flutter/material.dart';

import '../BLoC/controller.dart';

class AtlasStatus extends StatelessWidget {
  
  AtlasStatus(controller) {
    _controller = controller;
  }

  Bloc _controller;


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _controller.stream,
      builder: (context, asyncSnapshot) {
        return Text('Status: ' + asyncSnapshot.data.toString(),
            style: Theme.of(context).textTheme.bodyText1);
      },
    );
  }
}
