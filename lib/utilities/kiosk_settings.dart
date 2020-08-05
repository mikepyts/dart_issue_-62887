/// Kiosk configuration that is taken from page source
@JS()
library config;

import 'package:kiosk2/widgets/general_purpose/platform_import_stub.dart' if (dart.library.html) 'package:js/js.dart';

@JS('kiosk_config')
external String kioskSettings(String s);

class ApplicationSettings {
  // Works!
  static final int autologout = null;
  // Doesn't work!
  //static final int autologout = int.tryParse('${kioskSettings('autologout')}');
  
}
