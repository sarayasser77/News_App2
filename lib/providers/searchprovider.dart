import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchProvider extends ChangeNotifier {
  List quotes = [];
  String Text = '';
  bool loading=false;
  searchdata({required Text}) async {

    loading=true;
    quotes=[];
    try {
      print('Start search');
      http.Response search = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?q=$Text&apiKey=a0b05fa063584f49b5447acf4266155d'));
      if (search.statusCode == 200) {
        print('data search');

        quotes = json.decode(search.body)['articles'];
        notifyListeners();
      }
      print('End search');

      print(json.decode(search.body));
    } on SocketException {
      print('Error!');
    } catch (e) {
      print(e.toString());
    }
    loading=false;
  }
}