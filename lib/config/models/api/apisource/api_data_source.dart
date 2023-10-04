import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumpulan/config/models/api/apisource/api_response.dart';
import 'package:kumpulan/config/models/request/register/request_register.dart';
import 'package:kumpulan/config/models/response/auth/response_data.dart';

class AuthRepository {
  Future<ApiResponse> register(RequestRegister request) async {
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.post(
        Uri.parse('http://food.test/api/register'),
        headers: {'accept': 'application/json'},
        body: request.toMap(),
      );
      switch (response.statusCode) {
        case 200:
          apiResponse.data = AuthData.fromJson(jsonDecode(response.body));
          break;
        case 422:
          final errors = jsonDecode(response.body)['errors'];
          apiResponse.error = errors[errors.keys.elementAt(0)][0];
          break;
        case 403:
          apiResponse.error = jsonDecode(response.body)['message'];
          break;
        default:
          apiResponse.error = "somethingWentWrong";
          break;
      }
    } catch (e) {
      apiResponse.error = "serverError";
    }
    return apiResponse;
  }
}
