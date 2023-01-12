import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class AppConnection {
  AppConnection();

  static Uri defaultServer = getDebugServer();

  static Uri getServer() {
    final link = Uri.base;
    final server = Uri(host: link.host, port: link.port, scheme: 'http');
    return server;
  }

  static Uri getDebugServer() {
    final server = Uri.parse("http://boginni.net:11002");
    return server;
  }

  static Uri getLink(Uri base, String route) {
    return Uri(
        host: base.host, port: base.port, scheme: base.scheme, path: route);
  }

  factory AppConnection.of(BuildContext context) {
    return context.read<AppConnection>();
  }

  Future<Response> serverPost(String route,
      {dynamic body,
      Map<String, String>? headers,
      BuildContext? context}) async {
    body ??= {};
    headers ??= {};

    /// converte para json se não for
    if (body is! String) {
      body = const JsonEncoder().convert(body);
    }

    headers.addAll({
      'Content-Length': utf8.encode(body).length.toString(),
      // 'Content-Type ': 'application/json',
      'charset': 'utf-8',
      // 'Connection': 'keep-alive',
      // 'Accept-Encoding': 'gzip, deflate, br',
      "content-type": "application/json"
    });

    try {
      final url = getLink(defaultServer, route);
      // debugPrint('post: $url');
      // print(headers);
      // print(body);

      final res = await post(url, body: body, headers: headers);

      return res;
    } on TimeoutException catch (e) {
      // printDebug('Timeout');
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      debugPrint(e.runtimeType.toString());
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getResult(String route,
      {dynamic body, Map<String, String>? headers}) async {
    final response = await serverPost(route, body: body, headers: headers);

    final resBody = const JsonDecoder().convert(response.body);

    return resBody;
  }

  Future<List<dynamic>> getBuffetResult(String route,
      {dynamic body, Map<String, String>? headers}) async {
    final resBody = await getResult(route, body: body, headers: headers);
    return resBody['rows'];
  }
}
