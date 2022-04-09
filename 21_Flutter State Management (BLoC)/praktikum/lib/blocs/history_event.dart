part of 'history_bloc.dart';

@immutable
abstract class HistoryEvent {}

class OnAddHistory extends HistoryEvent {
  final HistoryModel history;
  OnAddHistory(this.history);
}

class OnFetchHistory extends HistoryEvent {}
