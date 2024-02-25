import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dark_event.dart';
part 'dark_state.dart';
part 'dark_bloc.freezed.dart';

class DarkBloc extends Bloc<DarkEvent, DarkState> {
  DarkBloc() : super(DarkState.initial()) {
    on<Toggle>((event, emit) {
      emit(DarkState(isTrue: !state.isTrue));
    });
  }
}
