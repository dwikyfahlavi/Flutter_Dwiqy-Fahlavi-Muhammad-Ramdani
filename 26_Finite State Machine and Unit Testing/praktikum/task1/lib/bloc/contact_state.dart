part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object?> get props => [];
}

class LoadingState extends ContactState {}

class SuccessState extends ContactState {
  final List<ContactModel> contacts;

  const SuccessState({required this.contacts});

  @override
  List<Object?> get props => [contacts];
}

class ErrorState extends ContactState {
  final String message;

  const ErrorState(this.message);
}
