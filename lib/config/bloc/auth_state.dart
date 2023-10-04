part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AppLoading extends AuthState {
  @override
  List<Object> get props => [];
}

class AppLoaded extends AuthState {
  final AuthData model;

  const AppLoaded(this.model);
  @override
  List<Object> get props => [model];
}
