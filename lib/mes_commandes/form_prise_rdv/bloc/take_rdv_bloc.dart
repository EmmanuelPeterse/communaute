import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'take_rdv_event.dart';
part 'take_rdv_state.dart';

class TakeRdvBloc extends Bloc<TakeRdvEvent, TakeRdvState> {
  TakeRdvBloc() : super(TakeRdvInitial(value: '')) {
      
      
        on<DateEvent>((event, emit) {
          // TODO: implement event handler
        });


        on<TimeEvent> ((event, emit) {

        });


        on<MessageEvent>((event, emit) {
          
        });
  }
}
