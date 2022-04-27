import 'package:task1/models/api/service.dart';
import 'package:task1/models/contact_model.dart';
import 'package:task1/models/food_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'contact_api_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  final ApiService service = ApiService();
  group('ApiService', () {
    ApiService mock = MockApiService();
    test('get all contact data return contact list', () async {
      when(mock.fetchAllContacts()).thenAnswer(
        (_) async => <ContactModel>[
          ContactModel(id: 1, name: "a", phone: "089525332411"),
        ],
      );
      var contacts = await service.fetchAllContacts();
      expect(contacts.isNotEmpty, true);
    });

    test('get all food data return food list', () async {
      when(mock.fetchAllFoods()).thenAnswer(
        (_) async => <Food>[
          Food(id: 1, name: "a"),
        ],
      );
      var foods = await service.fetchAllFoods();
      expect(foods.isNotEmpty, true);
    });

    test('post contact data return contact object', () async {
      var contact = await service.addContact(ContactModel(name: 'r', phone: '1'));
      expect(contact.name, 'r');
      expect(contact.phone, '1');
    });
  });
}
