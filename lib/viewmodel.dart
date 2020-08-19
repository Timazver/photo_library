
import 'dart:async';

class ViewModel {

  StreamController<String> _controller = StreamController<String>();

  Sink<String> get inName => _controller.sink;

  Stream<String> get outName => _controller.stream;

}