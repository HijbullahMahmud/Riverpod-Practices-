import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import '../model/user/user.dart';

class ApiService {
  String endPoint = 'https://reqres.in/api/users?page=2';

  Future<List<User>> getUser() async {
    Response response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final apiProvider = Provider<ApiService>((ref) => ApiService());
