import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_practice/data/model/user/user.dart';
import 'package:riverpod_practice/data/services/api_service.dart';

final userListProvider =
    FutureProvider<List<User>>((ref) async => ref.read(apiProvider).getUser());
