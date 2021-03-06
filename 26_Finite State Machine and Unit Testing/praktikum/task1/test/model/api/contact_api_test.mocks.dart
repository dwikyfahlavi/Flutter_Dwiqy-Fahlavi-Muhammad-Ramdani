// Mocks generated by Mockito 5.1.0 from annotations
// in task_25/test/model/api/contact_api_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:task1/models/api/service.dart' as _i3;
import 'package:task1/models/contact_model.dart' as _i2;
import 'package:task1/models/food_model.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeContactModel_0 extends _i1.Fake implements _i2.ContactModel {}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i3.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i2.ContactModel>> fetchAllContacts() => (super.noSuchMethod(Invocation.method(#fetchAllContacts, []),
      returnValue: Future<List<_i2.ContactModel>>.value(<_i2.ContactModel>[])) as _i4.Future<List<_i2.ContactModel>>);
  @override
  _i4.Future<_i2.ContactModel> addContact(_i2.ContactModel? contact) =>
      (super.noSuchMethod(Invocation.method(#addContact, [contact]),
          returnValue: Future<_i2.ContactModel>.value(_FakeContactModel_0())) as _i4.Future<_i2.ContactModel>);
  @override
  _i4.Future<List<_i5.Food>> fetchAllFoods() => (super.noSuchMethod(Invocation.method(#fetchAllFoods, []),
      returnValue: Future<List<_i5.Food>>.value(<_i5.Food>[])) as _i4.Future<List<_i5.Food>>);
}
