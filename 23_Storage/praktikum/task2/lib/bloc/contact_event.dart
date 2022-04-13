part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  @override  
  List<Object?> get props => [];
}

class FetchData extends ContactEvent {}

class AddContact extends ContactEvent {
  final Contact newContact;
  AddContact(this.newContact);
}

class DeleteContact extends ContactEvent {
  final int index;
  DeleteContact(this.index);
}
