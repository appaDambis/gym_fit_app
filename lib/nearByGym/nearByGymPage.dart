import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

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

      final apiKey = 'AIzaSyBRJiM8_hDA2nlPPmBi5tNDIpXW1aHlZiA';
      final url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
          '?location=${position.latitude},${position.longitude}'
          '&radius=1500&type=gym&key=$apiKey';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        print('API Response: ${result.toString()}');
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
        .onError((error, stackrace) {
      print(error);
    });
    return await Geolocator.getCurrentPosition();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Gyms'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : ListView.builder(
                  itemCount: _nearbyGyms.length,
                  itemBuilder: (context, index) {
                    var gym = _nearbyGyms[index];
                    return ListTile(
                      title: Text(gym['name']),
                      subtitle: Text(gym['vicinity']),
                    );
                  },
                ),
    );
  }
}
