class MenuItem {
  final String titre;
  final String basePath;
  MenuItem({this.titre, this.basePath});
}

final List menuItems = [
  MenuItem(titre: 'Journal', basePath: 'JOURNAL'),
  MenuItem(titre: 'Emissions', basePath: 'EMISSIONS'),
  MenuItem(titre: 'Reportages', basePath: 'REPORTAGES'),
  MenuItem(titre: 'Chroniques', basePath: 'CHRONIQUES'),
  MenuItem(titre: 'Invités', basePath: 'INVITES'),
  MenuItem(titre: 'Revues de presse', basePath: 'REVUES'),
];
