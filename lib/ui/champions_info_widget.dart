import 'package:flutter/material.dart';
import 'package:lol_stats/constants/ApiConstants.dart';
import 'package:lol_stats/model/Champion.dart';

class ChampionsInfoWidget extends StatelessWidget {
  Champion champion;

  ChampionsInfoWidget(this.champion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            Image.network(FULL_IMAGE_LINK + champion.imageLink)
          ],
      )
    );
  }
}