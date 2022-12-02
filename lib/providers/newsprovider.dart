import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class Newsprovider extends ChangeNotifier{
  List Healthdata=[];
  List Businessdata=[];
  List Sportsdata=[];
  List entertainmentdata=[];
  List Sciencedata=[];
  List technologydata=[];
  getData({required CategoryName,required index}) async{
    try{
      http.Response res= await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?category=$CategoryName&country=us&apiKey=a0b05fa063584f49b5447acf4266155d'));
      if(res.statusCode==200){
        if(CategoryName=='business'){
          Businessdata = json.decode(res.body)['articles'];
          notifyListeners();
        }else if(CategoryName=='sports'){
          Sportsdata= json.decode(res.body)['articles'];
          notifyListeners();
        }else if(CategoryName=='science'){
          Sciencedata= json.decode(res.body)['articles'];
          notifyListeners();
        }else if(CategoryName=='entertainment'){
          entertainmentdata=json.decode(res.body)['articles'];
          notifyListeners();
        }else if(CategoryName=='technology'){
          technologydata=json.decode(res.body)['articles'];
          notifyListeners();
        }else if(CategoryName=='health'){
          Healthdata=json.decode(res.body)['articles'];
          notifyListeners();
        }

      }else{
        print('${json.decode(res.body)['message']}');
      }

    }catch(e){
      print(e.toString());
    }

  }
}