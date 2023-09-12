part of 'take_rdv_bloc.dart';

sealed class TakeRdvState extends Equatable {
  const TakeRdvState();
  
  @override
  List<Object> get props => [];
}

final class TakeRdvInitial extends TakeRdvState {

  final String value;

  TakeRdvInitial({
    required this.value
  });

    @override
  List<Object> get props => [value];




}


