import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    User? user;
    on<Check>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 1800));
      user = FirebaseAuth.instance.currentUser;
      emit(SplashState(currentUser: user));
    });
  }
}
