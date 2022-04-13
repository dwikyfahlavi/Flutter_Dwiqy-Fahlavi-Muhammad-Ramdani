part of 'history_bloc.dart';

abstract class HistoryState extends Equatable {
  const HistoryState();
  
  @override
  List<Object> get props => [];
}

class HistoryInit extends HistoryState {
  final List<History> listHistory;

  const HistoryInit({required this.listHistory});

  @override  
  List<Object> get props => [listHistory];
}
