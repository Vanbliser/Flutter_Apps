import 'package:conclase_tracnine/app/routes/card_routes/card_routes.dart';
import 'package:conclase_tracnine/app/routes/card_routes/card_routes_map.dart';
import 'package:flutter/material.dart';


class MapScreenCardWidget extends StatefulWidget {
  const MapScreenCardWidget({Key? key}) : super(key: key);

  @override
  State<MapScreenCardWidget> createState() => _MapScreenCardWidgetState();
}

class _MapScreenCardWidgetState extends State<MapScreenCardWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: CardRoutes.searchCardScreen,
      key: cardNavKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: cardRoutesMap[settings.name]!
        ),
    );
  }
}
