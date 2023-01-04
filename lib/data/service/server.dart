import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class RequestHandler {
  var uri = 'https://api-dev.saviway.com/api/v1/';

  Future<http.Response> postDate(
      {required String posturl, required Object postBody}) async {
    Uri url = Uri.parse('$uri$posturl');
    var response = await http.post(url,
        body: postBody, headers: {"Content-type": "application/json"});
    return response;
  }
}
