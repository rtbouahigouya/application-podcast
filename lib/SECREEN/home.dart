import 'package:application_podcast/DATARAW/data_raw.dart';
import 'package:application_podcast/SECREEN/journal.dart';
import 'package:application_podcast/TRANSITION/transition_pageRoute.dart';
import 'package:application_podcast/WIDGETS/background_widget.dart';
import 'package:application_podcast/WIDGETS/list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ouahigouya'),
          leading: Image.asset('images/logo_rtb.png'),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: BackgroundColor(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: menuItems.map((e) {
                return MenuList(
                  fontcolor: Colors.white,
                  fontsize: 26.0,
                  titre: e.titre,
                  fonction: () => detailwidget(e.basePath),
                );
              }).toList(),
            ),
          ),
        ));
  }

  detailwidget(String path) {
    Navigator.push(context, BounceTransition(widget: JournalList()));
    print(path);
  }
}
