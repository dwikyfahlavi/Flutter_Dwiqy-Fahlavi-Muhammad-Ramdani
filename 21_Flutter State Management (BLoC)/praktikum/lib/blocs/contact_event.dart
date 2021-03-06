part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {}

class OnAddContact extends ContactEvent {
  final ContacModel contact;
  OnAddContact(this.contact);
}

class OnRemoveContact extends ContactEvent {
  final int index;
  OnRemoveContact(this.index);
}

class OnFetchContact extends ContactEvent {}
