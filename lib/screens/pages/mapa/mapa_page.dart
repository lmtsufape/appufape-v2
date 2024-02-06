// import 'package:flutter/material.dart';
// import 'package:thunderapp/assets/index.dart';
// import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
// import 'package:thunderapp/shared/constants/app_enums.dart';
// import 'package:thunderapp/shared/constants/style_constants.dart';

// class MapaPage extends StatelessWidget {
//   const MapaPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mapa', style: kTitle22),
//         centerTitle: true,
//         backgroundColor: kBack1,
//       ),
//       body: Container(
//         color: kOnSurfaceColor,
//         width: size.width,
//         padding: const EdgeInsets.all(17),
//         child: Column(
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               const VerticalSpacerBox(size: SpacerSize.large),
//               const VerticalSpacerBox(size: SpacerSize.large),
//               InkWell(
//                 child: Container(
//                   width: 430,
//                   height: 685,
//                   decoration: BoxDecoration(
//                     color: kTextButtonColor,
//                     borderRadius: const BorderRadius.all(Radius.circular(45)),
//                     boxShadow: [
//                       BoxShadow(
//                         color: kTextButtonColor.withOpacity(0.5),
//                         spreadRadius: 0,
//                         blurRadius: 3,
//                         offset:
//                             const Offset(0, 0), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: Center(
//                     child: Wrap(
//                       children: [
//                         Row(
//                           children: [
//                             Center(
//                                 child: Image.asset(
//                               Assets.mapa,
//                               scale: 0.8,
//                             )),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 onTap: () {},
//               ),
//               const VerticalSpacerBox(size: SpacerSize.large),
//             ]),
//       ),
//     );
//   }
// }





import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({super.key});

  @override
  State<MapaPage> createState() => MapaPageState();
}

class MapaPageState extends State<MapaPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-8.906517, -36.494420),
    zoom: 19,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-8.906517, -36.494420),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
     int selectedIndex = 0;
    return Scaffold(
     backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBack1,
        title: const Center(child: Text("Mapa")),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
      bottomNavigationBar: BottomNavigation(selectedIndex: selectedIndex),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}