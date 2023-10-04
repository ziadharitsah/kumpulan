part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class ProcessRegis extends AuthEvent {
  final RequestRegister request;

  const ProcessRegis(this.request);
  @override
  // TODO: implement props
  List<Object?> get props => [request];
}
