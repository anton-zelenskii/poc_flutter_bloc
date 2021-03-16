import 'package:flutter/material.dart';

import 'UIComponents/atlas.dart';

void main() => runApp(AtlasApp());

class AtlasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AtlasLayout(),
      },
    );
  }
}
