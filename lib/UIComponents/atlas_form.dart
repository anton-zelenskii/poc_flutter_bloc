import 'package:flutter/material.dart';

import '../BLoC/controller.dart';

class AtlasForm extends StatefulWidget {
  Bloc _controller;

  AtlasForm(controller) {
    this._controller = controller;
  }
  @override
  _AtlasFormState createState() => _AtlasFormState(_controller);
}

class _AtlasFormState extends State<AtlasForm> {
  _AtlasFormState(controller) {
    _controller = controller;
  }
  Bloc _controller;

  final _bookingIdController = TextEditingController();

  double _formProgress = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LinearProgressIndicator(value: _formProgress),
        Text('Flutter PoC', style: Theme.of(context).textTheme.headline4),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextFormField(
            controller: _bookingIdController,
            decoration: InputDecoration(hintText: 'Type the bookingId here'),
          ),
        ),
        TextButton(
            style: ButtonStyle(foregroundColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.white;
            }), backgroundColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? null
                  : Colors.blue;
            })),
            onPressed: () => {_controller.setStatus('Saving...')},
            child: Text('Submit'))
      ],
    ));
  }
}
