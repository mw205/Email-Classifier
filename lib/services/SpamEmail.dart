// ignore_for_file: file_names
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../functions/showResponse.dart';

Future<String> classifyEmail(String email, context) async {
  String url = 'http://9433-156-206-252-189.ngrok.io/api/classify';
  var response = await http.post(Uri.parse(url), body: {'message': email});
  Map<String, dynamic> myMap = jsonDecode(response.body);
  String responseString = myMap['label'];
  if (response.statusCode == 200) {
    ShowResponse(context, responseString);
    return response.body;
  } else {
    throw Exception('Failed to classify email');
  }
}
