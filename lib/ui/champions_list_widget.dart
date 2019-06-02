import 'package:flutter/material.dart';
import 'package:lol_stats/constants/ApiConstants.dart';
import 'package:lol_stats/model/Champion.dart';
import 'package:lol_stats/repository/ChampionsRepository.dart';

import 'champions_info_widget.dart';

class ChampionsListWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: getChampions(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<String, Champion> map = snapshot.data;
            List<Champion> list = map.values.toList();
            return GridView.builder(
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell (
                    child: Card(
                        child: Image.network(AVATAR_LINK + list[index].avatar)
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChampionsInfoWidget(list[index])),
                      );
                    },
                  );
                }
            );
          } else {
            return new Center(
                child: CircularProgressIndicator()
            );
          }
        }
    );

  }

}