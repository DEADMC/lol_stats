import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lol_stats/model/Champion.dart';

Future<Map<String, dynamic>> getChampionsAsset() async {
  print('--- getChampions');
  return rootBundle.loadString("assets/championFull.json")
      .then((jsonStr) => jsonDecode(jsonStr));
}

Future<Map<String, Champion>> getChampions() async {
  var data = await getChampionsAsset();
  Map<String, Champion> map = new Map();
  for (var property in data["data"].keys) {
    var champion = Champion.fromJson(data["data"][property]);
    map[champion.name] = champion;
  }
  return map;
}