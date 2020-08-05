/*
 * file: main.dart
 *
 * Kiosk2 starting point
 *
 * ---------------------------------------
 * 'Copyright © 2019-19 by MediTec GmbH, '
 * 'Bad Salzdetfurth. All rights reserved'
 * ---------------------------------------
 *
 * MPyts: Mo 9 Dec 2019 12:00:00 CEST
 *
 * $Id$
 */

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'auto_generated_files/injection.dart';
import 'auto_generated_files/mobile_router.gr.dart';
import 'auto_generated_files/web_router.gr.dart';
import 'blocs/user_session_bloc/user_session_bloc.dart';
import 'repositories/person_repository.dart';

//? ⚐ General interface code
const String environment = kReleaseMode ? Environment.prod : Environment.prod;

ExtendedNavigatorState<RouterBase> navigator =
    kIsWeb ? ExtendedNavigator.ofRouter<WebRouter>() : ExtendedNavigator.ofRouter<MobileRouter>();

UserSessionBloc get userSessionBloc => navigator.context.bloc<UserSessionBloc>();
PersonRepository get personRepository => navigator.context.repository<PersonRepository>();

void main() async {
  // DI with a service locator for UI developments (set to Environment.prod or Environment.dev)
  configureInjection(environment);

  runApp(MultiBlocProvider(
    providers: <BlocProvider<Bloc>>[
      BlocProvider<UserSessionBloc>(create: (BuildContext context) => getIt<UserSessionBloc>()),
    ],
    child: MaterialApp(home: Kiosk2()),
  ));
}

class Kiosk2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp();
}
