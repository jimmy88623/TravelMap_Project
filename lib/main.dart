import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          elevation: 2,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: {
            const Marker(
              markerId: const MarkerId("Sydney"),
              position: LatLng(-33.86, 151.20),
              infoWindow: InfoWindow(
                title: "Sydney",
                snippet: "Capital of New South Wales",
              ), // InfoWindow
            ),
            const Marker(
              markerId: const MarkerId("NCKU CSIE"),
              position: LatLng(22.997339561314448, 120.22109351015527),
              infoWindow: InfoWindow(
                title: "NCKU CSIE",
                snippet: "CSIE IN NCKU",
              ), // InfoWindow
            ), //Ma//Ma
          },
        ),
      ),
    );
  }
}