import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kiosk2/utilities/kiosk_settings.dart';

part 'user_session_event.dart';
part 'user_session_state.dart';

//! WEB platform only
abstract class UserSessionBloc extends Bloc<UserSessionEvent, UserSessionState> {
  UserSessionBloc(UserSessionState initialState) : super(initialState);
}

//? --------------------------------------------------- PRODUCTION --------------------------------------------------------
@Injectable(as: UserSessionBloc, env: Environment.prod)
@singleton
class UserSessionBlocProd extends UserSessionBloc {
  UserSessionBlocProd()
      : super(UserSessionState(
          sessionDuration: ApplicationSettings.autologout,
        ));

  @override
  Stream<UserSessionState> mapEventToState(UserSessionEvent event) async* {}
}

//? --------------------------------------------------- DEVELOPMENT --------------------------------------------------------
@Injectable(as: UserSessionBloc, env: Environment.dev)
@singleton
class UserSessionBlocDev extends UserSessionBloc {
  UserSessionBlocDev()
      : super(UserSessionState(
          sessionDuration: ApplicationSettings.autologout,
        )) {}

  @override
  Stream<UserSessionState> mapEventToState(UserSessionEvent event) {
    throw UnimplementedError();
  }
}
