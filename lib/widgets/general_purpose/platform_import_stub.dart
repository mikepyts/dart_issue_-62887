class platformViewRegistry {
  static registerViewFactory(String viewId, dynamic cb) {}
}

//? ----------------------------------------- dart: html ------------------------------------------------

final window = Window(Location(), Document(), Navigator());

class Window {
  Window(this.location, this.document, this.navigator);
  final Location location;
  final Document document;
  final Navigator navigator;
}

class Navigator {
  Navigator();
  Future<MediaStream> getUserMedia({bool video}) {}
}

class Location {
  final String origin = '';
  final String href = '';
  void replace(String string) {}
  void getElementId() {}
}

class Document {
  const Document();

  Element getElementById(String string) => Element();
}

class Element {
  CssStyleDeclaration style;
}

class CssStyleDeclaration {
  String cursor;
}

class Blob {}

class FileReader {
  void readAsDataUrl(Blob blob) {}
  Stream<ProgressEvent> onLoadEnd = Stream<ProgressEvent>.empty();
  Object result = Object();
}

class ProgressEvent {}

class MediaStreamTrack {
  void stop() {}
}

class ImageCapture {
  ImageCapture(MediaStreamTrack mediaStreamTrack);
  Future<Blob> takePhoto() {}
}

class MediaStream {
  static bool supported;
  List<MediaStreamTrack> getVideoTracks() {}
}

class VideoElement {
  MediaStream srcObject;
  void play() {}
  void pause() {}
  void remove() {}
  double videoWidth;
  double videoHeight;
}

class DomException {}

//? -------------------------------------------- dart: js ------------------------------------------------
allowInterop([Object object]) {}

class JS {
  final String name;
  const JS([this.name]);
}

class _Anonymous {
  const _Anonymous();
}

const _Anonymous anonymous = _Anonymous();

Future<T> promiseToFuture<T>(Object jsPromise) => Future<void>(() => null);

dynamic callMethod(Object o, String method, List<Object> args) => null;

dynamic getProperty(Object o, Object name) => null;

