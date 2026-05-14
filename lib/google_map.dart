import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatefulWidget {

   GoogleMapDemo({super.key});

  @override
  State<GoogleMapDemo> createState() => _GoogleMapDemoState();
}

class _GoogleMapDemoState extends State<GoogleMapDemo> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(33.6007, 73.0679),
      infoWindow: InfoWindow(title: "Rawalpindi")
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(33.6000, 73.0679),
      infoWindow: InfoWindow(title: "Lahore")
    ),
    Marker(
      markerId: MarkerId("3"),
      position: LatLng(33.6007, 73.0670),
      infoWindow: InfoWindow(title: "Karachi")
    ),

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GoogleMap(
        markers: markers,
          initialCameraPosition: CameraPosition(
              target: LatLng(33.6007, 73.0679),
            zoom: 20),
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
