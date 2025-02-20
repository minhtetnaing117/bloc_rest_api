import 'package:bloc_rest_api/data/model/contact.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'apiservice.g.dart';
@RestApi(baseUrl: 'https://67b6b75007ba6e5908416dc5.mockapi.io/api')
abstract class ApiService {
  factory ApiService(Dio dio) => _ApiService(dio);

  @GET('')
  Future<List<Contact>> getContact();

  @POST('')
  Future<Contact> addContact(@Body() Contact contact);

  @PUT('{id}')
  Future<Contact> updateContact(@Path()String id, @Body() Contact contact);

  @DELETE('{id}')
  Future<Contact> deleteContact(@Path()String id);
}