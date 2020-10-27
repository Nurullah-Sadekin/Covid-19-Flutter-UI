import 'dart:async' show Future;
import 'dart:convert';
import 'package:covid_19/model/countrymodel.dart';
import 'package:http/http.dart' as http;

Future<Bangladesh> upDate() async {
  final response = await http
      .get('https://coronavirus-19-api.herokuapp.com/countries/Bangladesh');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Bangladesh.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
