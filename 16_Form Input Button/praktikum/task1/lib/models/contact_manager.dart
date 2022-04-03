import 'package:flutter/foundation.dart';
import 'package:task1/models/contact_model.dart';

class ContactManager extends ChangeNotifier {
  final _contactModel = <ContactModel>[
    ContactModel(
        name: 'Muhammad Brimstone',
        avatar:
            'https://i1.wp.com/champions.my.id/wp-content/uploads/2021/02/brimstone.png?fit=997%2C565&ssl=1',
        number: '085155325299',
        status: 'Sudah Menikah',
        gender: 'Laki-Laki',
        hobi: 'Bakar orang'),
    ContactModel(
        name: 'Udin Flawless',
        avatar:
            'https://static.wikia.nocookie.net/valorant/images/5/53/Breach_icon.png',
        number: '085436852158',
        status: 'Belum Menikah',
        gender: 'Laki-Laki',
        hobi: 'Stun Orang'),
    ContactModel(
        name: 'Riska Sachel',
        avatar:
            'https://static.wikia.nocookie.net/valorant/images/3/33/Skye_icon.png',
        number: '085157855246',
        status: 'Belum Menikah',
        gender: 'Perempuan',
        hobi: 'Makan Soul'),
    ContactModel(
        name: 'Asep Botfrag',
        avatar:
            'https://dak.gg/valorant/images/agents/small_portraits/phoenix.png?20201008',
        number: '085784267858',
        status: 'Sudah Menikah',
        gender: 'Laki-Laki',
        hobi: 'Bikin KageBunshin'),
    ContactModel(
        name: 'Indra Scatter',
        avatar:
            'https://titles.trackercdn.com/valorant-api/agents/7f94d92c-4234-0a36-9646-3a87eb8b5c89/displayicon.png',
        number: '0898554658525',
        status: 'Belum Menikah',
        gender: 'Laki-Laki',
        hobi: 'Zeus yang jamin')
  ];
  List<ContactModel> get contactModel => List.unmodifiable(_contactModel);

  void addContact(ContactModel contact) {
    _contactModel.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contactModel.removeAt(index);
    notifyListeners();
  }
}
