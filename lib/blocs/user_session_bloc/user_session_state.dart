part of 'user_session_bloc.dart';

@immutable
class UserSessionState {
  const UserSessionState({
    this.sessionDuration,
  });

  final int sessionDuration;
}
