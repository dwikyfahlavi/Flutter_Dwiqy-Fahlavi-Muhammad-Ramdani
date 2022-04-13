part of 'history_bloc.dart';

abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

class AddHistory extends HistoryEvent {
  final History history;
  const AddHistory({required this.history});

  @override  
  List<Object> get props => [history];
}