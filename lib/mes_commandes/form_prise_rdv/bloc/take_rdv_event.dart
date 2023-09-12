part of 'take_rdv_bloc.dart';

sealed class TakeRdvEvent extends Equatable {
  const TakeRdvEvent();

  @override
  List<Object> get props => [];
}

class DateEvent extends TakeRdvEvent{}

class TimeEvent extends TakeRdvEvent{}

class MessageEvent extends TakeRdvEvent{}