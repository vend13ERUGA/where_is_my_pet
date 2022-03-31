// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:latlong2/latlong.dart';
//
//
// class Home extends StatefulWidget{
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return GoogleMap(
//       markers: _markers,
//       initialCameraPosition: _theSecretLocation,
//       onMapCreated: (GoogleMapController controller) {
//         _controller.complete(controller);
//       },
//       onTap: _handleTap,
//     );
//
//     // _handleTap(LatLng point) {
//     // setState(() {
//     // _markers.add(Marker(
//     // markerId: MarkerId(point.toString()),
//     // position: point,
//     // infoWindow: InfoWindow(
//     // title: 'I am a marker',
//     // ),
//     // icon:
//     // BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
//     // ));
//     // });
//     // }
//   }
//
//
//   Future<Position> _determinePosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     // Test if location services are enabled.
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // Location services are not enabled don't continue
//       // accessing the position and request users of the
//       // App to enable the location services.
//       return Future.error('Location services are disabled.');
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         // Permissions are denied, next time you could try
//         // requesting permissions again (this is also where
//         // Android's shouldShowRequestPermissionRationale
//         // returned true. According to Android guidelines
//         // your App should show an explanatory UI now.
//         return Future.error('Location permissions are denied');
//       }
//     }
//
//     if (permission == LocationPermission.deniedForever) {
//       // Permissions are denied forever, handle appropriately.
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }
//
//     // When we reach here, permissions are granted and we can
//     // continue accessing the position of the device.
//     return await Geolocator.getCurrentPosition();
//   }
// }
//
