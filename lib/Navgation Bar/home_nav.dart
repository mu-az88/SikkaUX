import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:public_transportation/custom_widgets/Sliding%20Up%20Panel/panel_widget.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  final PanelController _panelController = PanelController();
  final MapController _mapController = MapController();

  bool isLoading = true;
  bool isRouteFetching = false; // New loading state for route fetching
  String routeFetchingMessage =
      "Finding route..."; // Message to show during loading

  LatLng? _origin;

  @override
  Widget build(BuildContext context) {
    final double PanelHeightClosed = MediaQuery.of(context).size.height * 0.235;
    final double PanelHeightOpen = MediaQuery.of(context).size.height * 1.0;
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _origin ?? const LatLng(51.5074, -0.1278),
              initialZoom: 13,
              minZoom: 5.0,
              maxZoom: 18.0,
              interactionOptions: InteractionOptions(
                flags: isRouteFetching
                    ? InteractiveFlag
                        .none // Disable all interactions during route fetching
                    : InteractiveFlag.all,
              ),
              onPositionChanged: (MapCamera pos, bool hasGesture) {
                if (!isRouteFetching) {
                  setState(() {});
                }
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.void_path',
                maxZoom: 19,
              ),
              CurrentLocationLayer(
                alignPositionOnUpdate: AlignOnUpdate.once,
                alignDirectionOnUpdate: AlignOnUpdate.never,
                style: const LocationMarkerStyle(
                  marker: DefaultLocationMarker(
                    child: Icon(Icons.navigation, color: Colors.white),
                  ),
                  markerSize: Size(40, 40),
                  markerDirection: MarkerDirection.heading,
                ),
              ),
            ],
          ),

          /*



          Floating Icons




          */
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 90, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 243, 255),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        color: Color.fromARGB(255, 0, 59, 115),
                        icon: const Icon(Icons.notifications_none),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(230, 90, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 243, 255),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        color: Color.fromARGB(255, 0, 59, 115),
                        icon: const Icon(Icons.person_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          /*



          Sliding Up Panel
          


          */
          SlidingUpPanel(
            controller: _panelController,
            minHeight: PanelHeightClosed,
            maxHeight: PanelHeightOpen,
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            panelBuilder: (controller) => PanelWidget(
              panelController: _panelController,
              controller: controller,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: Color.fromARGB(255, 229, 243, 255),
          ),
        ],
      ),
    );
  }
}
