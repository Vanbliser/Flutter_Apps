import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/components/map_screen_card_copy.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/map_screen/widgets/offline_button_widget.dart';
import 'package:conclase_tracnine/app/ui/screens/home_dashboard/welcome_screen/widgets/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(6.5244, 3.3792);
  void _onMapCreated(GoogleMapController _controller) {
    mapController = _controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
          const HomeIconWidget(),
          const Align(
              alignment: Alignment.topRight, child: OfflineButtonWidget()),
          Padding(
            padding: EdgeInsets.only(bottom: 20.r),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 235.h,
                    width: 320.w,
                    child: const MapScreenCardWidget())),
          )
        ],
      )),
    );
  }
}
