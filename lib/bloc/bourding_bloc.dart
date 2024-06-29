import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bourding_event.dart';
part 'bourding_state.dart';

class BourdingBloc extends Bloc<BourdingEvent, BourdingState> {
  BourdingBloc() : super(BourdingInitialState()) {
    on<ChangeTextEvent>(_ChangeTextEvent);
  }
  int index=0;
  int changeIndexing(int newIndex){
    index=newIndex;
    return index;
  }
  FutureOr<void> _ChangeTextEvent(ChangeTextEvent event, Emitter<BourdingState> emit) {
    emit(ChangeTextLoadingState());
    changeIndexing(index);
    emit(ChangeTextSuccessfullyState());
  }
}
