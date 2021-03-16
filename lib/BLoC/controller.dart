import 'dart:async';

class Bloc {
  final _controller = StreamController<String>();

  Stream<String> get stream => _controller.stream;

  String _status = 'Initial';

  Bloc() {
    _controller.sink.add(_status);
  }

  Future setStatus(status) async {
    _status = status;
    _controller.sink.add(_status);
    await Future.delayed(Duration(seconds: 3));
    _status = 'Saved';
    _controller.sink.add(_status);
  }

  dispose() {
    _controller.close();
  }
}
