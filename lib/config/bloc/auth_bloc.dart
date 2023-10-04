import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kumpulan/config/models/api/apisource/api_data_source.dart';
import 'package:kumpulan/config/models/api/apisource/api_response.dart';
import 'package:kumpulan/config/models/request/register/request_register.dart';
import 'package:kumpulan/config/models/response/auth/response_data.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;
  AuthBloc(this.repository) : super(AuthInitial()) {
    on<ProcessRegis>((event, emit) async {
      emit(AppLoading());
      ApiResponse apiResponse = await repository.register(event.request);
      emit(AppLoaded(apiResponse.data as AuthData));
    });
  }
}
