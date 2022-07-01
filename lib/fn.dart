import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pjct/number_fact_res/number_fact_res.dart';

Future<NumberFactRes> dataComing({required String number}) async {
  final _res = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
 final _bodyfunc = jsonDecode(_res.body) as Map <String,dynamic>;
final data = NumberFactRes.fromJson(_bodyfunc);
return data;
}
