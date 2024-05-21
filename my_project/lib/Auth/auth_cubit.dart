import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_project/DB/AuthRepository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    try {
      final user = await _authRepository.login(email, password);
      if (user != null) {
        emit(AuthSuccess(user));
      } else {
        emit(AuthFailure('Invalid email or password'));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
