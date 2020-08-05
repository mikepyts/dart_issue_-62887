// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:kiosk2/blocs/user_session_bloc/user_session_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Register prod Dependencies --------
  if (environment == 'prod') {

    g.registerFactory<UserSessionBloc>(() => UserSessionBlocProd());
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<UserSessionBloc>(() => UserSessionBlocDev());
  }
}
