import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tesla_owner_api/src/powerwalls/commands/commands.dart';

class PowerWalls {
  final String _token;
  late Commands commands;
  PowerWalls(this._token) {
    commands = Commands(_token);
  }
  final Dio _dio = Dio();
}
