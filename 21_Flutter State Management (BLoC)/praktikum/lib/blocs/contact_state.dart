part of 'contact_bloc.dart';

@immutable
abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

class ContactLoaded extends ContactState {
  final List<ContacModel> contact;
  ContactLoaded(this.contact);
}

class ContactLoadingFailed extends ContactState {
  final String message;
  ContactLoadingFailed(this.message);
}
