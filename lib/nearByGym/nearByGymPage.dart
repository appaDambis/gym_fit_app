import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class NearbyGymsPage extends StatefulWidget {
  const NearbyGymsPage({Key? key}) : super(key: key);

  @override
  _NearbyGymsPageState createState() => _NearbyGymsPageState();
}

class _NearbyGymsPageState extends State<NearbyGymsPage> {
  List _nearbyGyms = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchNearbyGyms();
  }

  Future<void> _fetchNearbyGyms() async {
    try {
      Position position = await getUserLocation();
      print('Current Position: ${position.latitude}, ${position.longitude}');

      final apiKey = 'You_API_Key';
      final url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
          '?location=${position.latitude},${position.longitude}'
          '&radius=1500&type=gym&key=$apiKey';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        // print('API Response: ${result.toString()}');
        setState(() {
          _nearbyGyms = result['results'];
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load nearby gyms.';
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        _errorMessage = 'An error occurred: $e';
        _isLoading = false;
      });
    }
  }

  Future<Position> getUserLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stacktrace) {
      print(error);
    });
    return await Geolocator.getCurrentPosition();
  }

  void _showRoute(LatLng destination) async {
    Position position = await getUserLocation();
    final currentLocation = LatLng(position.latitude, position.longitude);
    final url =
        'https://www.google.com/maps/dir/?api=1&origin=${currentLocation.latitude},${currentLocation.longitude}&destination=${destination.latitude},${destination.longitude}&travelmode=driving';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Gyms'),
        backgroundColor: Colors.black,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : Stack(
                  children: [
                    Positioned.fill(
                        child: Opacity(
                      opacity: 0.9,
                      child: Image.asset(
                        "assets/img/background2.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                    ListView.builder(
                      itemCount: _nearbyGyms.length,
                      itemBuilder: (context, index) {
                        var gym = _nearbyGyms[index];
                        var photoReference = gym['photos'] != null
                            ? gym['photos'][0]['photo_reference']
                            : null;
                        var photoUrl = photoReference != null
                            ? 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=$photoReference&key=Your_Api_Key'
                            : null;
                        var gymLocation = LatLng(
                          gym['geometry']['location']['lat'],
                          gym['geometry']['location']['lng'],
                        );
                        var rating = gym['rating'] != null
                            ? gym['rating'].toString()
                            : 'N/A';

                        return Card(
                          margin: const EdgeInsets.all(12.0),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: photoUrl != null
                                    ? Image.network(
                                        photoUrl,
                                        width: double.infinity,
                                        height: 220,
                                        fit: BoxFit.cover,
                                      )
                                    : Container(
                                        width: double.infinity,
                                        height: 200,
                                        color: Colors.grey[300],
                                        child: const Center(
                                          child: Icon(
                                            Icons.image,
                                            size: 80,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.black54,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        gym['name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.white,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 8.0,
                                              color: Colors.black,
                                              offset: Offset(1.0, 1.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        gym['vicinity'],
                                        style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 8.0,
                                              color: Colors.black,
                                              offset: Offset(1.0, 1.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 20,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            rating,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 8.0,
                                                  color: Colors.black,
                                                  offset: Offset(1.0, 1.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton.icon(
                                          onPressed: () =>
                                              _showRoute(gymLocation),
                                          icon: const Icon(Icons.directions,
                                              size: 20),
                                          label: const Text('Show Route'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16.0,
                                              vertical: 10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
    );
  }
}
