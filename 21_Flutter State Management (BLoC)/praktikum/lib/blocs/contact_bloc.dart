import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../moocking.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    /// TO STORE CONTACT
    List<ContacModel> listContact = [];

    /// FOR ADD
    on<OnAddContact>((event, emit) {
      listContact.add(event.contact);
      emit(ContactLoaded(listContact));
    });

    on<OnRemoveContact>((event, emit) {
      listContact.removeAt(event.index);
      emit(ContactLoaded(listContact));
    });

    /// FOR LOADED
    on<OnFetchContact>((event, emit) async {
      emit(ContactLoading());

      /// FOR HIDE LOADING
      emit(ContactLoaded(listContact));
    });
  }
}
