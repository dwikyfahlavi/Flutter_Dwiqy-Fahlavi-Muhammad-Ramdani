part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {}

class OnAddContact extends ContactEvent {
  final ContacModel contact;
  OnAddContact(this.contact);
}

class OnFetchContact extends ContactEvent {}
