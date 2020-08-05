import 'package:auto_route/auto_route_annotations.dart';
import 'package:kiosk2/auto_generated_files/router_interface.dart';
import 'package:kiosk2/routes/web_routes/login_route.dart';


@MaterialAutoRouter()
class $WebRouter extends RouterInterface {
  @initial
  LoginRoute loginRoute;

}
