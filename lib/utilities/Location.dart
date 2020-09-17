import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission = await requestPermission();
      Position position =
          await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      this.latitude = position.latitude;
      this.longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
