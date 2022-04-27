import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task1/models/api/service.dart';
import 'package:task1/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const SuccessState(contacts: [])) {
    final ApiService service = ApiService();

    on<FetchAllContacts>((event, emit) async {
      try {
        emit(LoadingState());

        /// Fetch data
        final List<ContactModel> result = await service.fetchAllContacts();

        emit(SuccessState(contacts: result));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });

    on<AddContact>((event, emit) async {
      var state = this.state;
      final List<ContactModel>? contacts;

      try {
        if (state is SuccessState) {
          /// Add data
          final ContactModel result = await service.addContact(event.contact);

          contacts = List.from(state.contacts)..add(result);
        } else {
          throw Exception('Failed to add contact!');
        }

        emit(SuccessState(contacts: contacts));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });
  }
}
