import 'package:application_podcast/PROVISOIRE/data.dart';
import 'package:application_podcast/SECREEN/detail_journal.dart';
import 'package:application_podcast/SECREEN/home.dart';
import 'package:application_podcast/TRANSITION/transition_pageRoute.dart';
import 'package:application_podcast/WIDGETS/background_widget.dart';
import 'package:application_podcast/WIDGETS/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JournalList extends StatefulWidget {
  @override
  _JournalListState createState() => _JournalListState();
}

class _JournalListState extends State<JournalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BackgroundColor(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_sharp),
                    onPressed: () {
                      Navigator.push(context, BounceTransition(widget: Home()));
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          'images/logo_rtb.png',
                        ),
                      ),
                      Text(
                        'Journal',
                        style: GoogleFonts.lato(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: journalList.length,
                  itemBuilder: (context, index) => MenuList(
                    titre: journalList[index].titre.toUpperCase(),
                    fontsize: 20,
                    fontcolor: Colors.white,
                    fonction: () => ouvrirWidget(
                      journalList[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ouvrirWidget(Journal j) {
    Navigator.push(
        context, BounceTransition(widget: DetailJournal(journal: j)));
  }
}
