part of 'contact_bloc.dart';

class ContactState extends Equatable {
  final List<Contact> contacts;
  
  const ContactState({
    required this.contacts
  });
  
  @override
  List<Object?> get props => [contacts];
}