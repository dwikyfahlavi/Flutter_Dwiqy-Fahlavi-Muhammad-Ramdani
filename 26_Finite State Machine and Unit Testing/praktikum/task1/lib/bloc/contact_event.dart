part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchAllContacts extends ContactEvent {}

class AddContact extends ContactEvent {
  final ContactModel contact;

  AddContact(this.contact);
}
