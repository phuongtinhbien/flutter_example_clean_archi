import 'dart:convert';

import 'package:core/src/data/constants/storage_key.dart';
import 'package:core/src/data/models/user_token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppTokenStorage extends TokenStorage<UserTokenModel> {
  UserTokenModel? currToken;

  @factoryMethod
  AppTokenStorage() {
    init();
  }

  Future<void> init() async {
    if (currToken == null) {
      final token = await _storage.read(key: StorageKey.USER_TOKEN_DATA);
      if (token != null) {
        final mapToken = jsonDecode(token);
        currToken = UserTokenModel.fromJson(mapToken);
      }
    }
  }

  FlutterSecureStorage get _storage => const FlutterSecureStorage();

  @override
  Future<void> delete() async {
    currToken = null;
    await _storage.delete(key: StorageKey.USER_TOKEN_DATA);
  }

  @override
  Future<UserTokenModel?> read() async {
    return currToken;
  }

  @override
  Future<void> write(UserTokenModel token) async {
    currToken = token;

    await _storage.write(
        key: StorageKey.USER_TOKEN_DATA, value: jsonEncode(token));
  }
}
