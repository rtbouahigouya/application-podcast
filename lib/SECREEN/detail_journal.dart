import 'package:application_podcast/PROVISOIRE/data.dart';
import 'package:application_podcast/SECREEN/journal.dart';
import 'package:application_podcast/TRANSITION/transition_pageRoute.dart';
import 'package:application_podcast/WIDGETS/background_widget.dart';
import 'package:application_podcast/WIDGETS/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailJournal extends StatefulWidget {
  final Journal journal;
  DetailJournal({this.journal});
  @override
  _DetailJournalState createState() => _DetailJournalState();
}

class _DetailJournalState extends State<DetailJournal> {
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
                      Navigator.push(
                          context, BounceTransition(widget: JournalList()));
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
              Container(
                color: Colors.yellow[200],
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/rtb_ohg.jpeg',
                ),
              ),
              SliderWidget(
                max: 100,
                onChanged: (value) {
                  print(value);
                },
                value: 50,
                min: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
