import 'package:auto_route/auto_route_annotations.dart';
import 'package:kiosk2/auto_generated_files/router_interface.dart';
import 'package:kiosk2/routes/mobile_routes/mobile_login_route.dart';

@MaterialAutoRouter()
class $MobileRouter extends RouterInterface {
  @initial
  LoginRoute loginRoute;
}
