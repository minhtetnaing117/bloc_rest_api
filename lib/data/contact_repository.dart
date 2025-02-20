import 'package:bloc_rest_api/data/api/apiservice.dart';
import 'package:bloc_rest_api/data/model/contact.dart';

class ContactRepository {
  final ApiService _apiService;

  ContactRepository(this._apiService);

  Future<List<Contact>> getContact() => _apiService.getContact();

  Future<Contact> addContact(Contact contact) => _apiService.addContact(contact);
}