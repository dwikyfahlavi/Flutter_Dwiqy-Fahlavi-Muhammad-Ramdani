import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/models/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactState(contacts: [])) {
    on<FetchData>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final String contactsString = prefs.getString('contacts_key') ?? '[]';

      List<Contact> newList = Contact.decode(contactsString);

      emit(ContactState(contacts: newList));
    });

    on<AddContact>((event, emit) async {
      var state = this.state;
      List<Contact> newList = List.from(state.contacts)..add(event.newContact);

      SharedPreferences prefs = await SharedPreferences.getInstance();

      final String encodedData = Contact.encode(newList);
      await prefs.setString('contacts_key', encodedData);

      emit(ContactState(contacts: newList));
    });

    on<DeleteContact>((event, emit) async {
      var state = this.state;
      List<Contact> newList = List.from(state.contacts)..removeAt(event.index);

      SharedPreferences prefs = await SharedPreferences.getInstance();

      final String encodedData = Contact.encode(newList);
      await prefs.setString('contacts_key', encodedData);

      emit(ContactState(contacts: newList));
    });
  }
}
