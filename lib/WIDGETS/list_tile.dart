import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuList extends StatelessWidget {
  final String titre;
  final Function fonction;
  double fontsize;
  Color fontcolor;
  MenuList(
      {@required this.titre,
      @required this.fontsize,
      @required this.fontcolor,
      this.fonction});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: fonction,
      title: Center(
          child: Text(
        titre,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.bold, fontSize: fontsize, color: fontcolor),
      )),
      trailing: Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    );
  }
}
