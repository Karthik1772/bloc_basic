import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'demo_bloc_event.dart';
part 'demo_bloc_state.dart';

class DemoBlocBloc extends Bloc<DemoBlocEvent, DemoBlocState> {
  int number=0;
  DemoBlocBloc() : super(DemoBlocInitial()) {
    on<IncrementEvent>((event, emit){
      emit(updatedState(number: number=number+1));
    });
    on<DecrementEvent>((event, emit){
      emit(updatedState(number: number=number-1));
    });
  }
}
