import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageLocation {
  final double longitude;
  final double latitude;
  final String address;

  ImageLocation({
    @required this.longitude,
    @required this.latitude,
    this.address,
  });
}

class Monkey with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final ImageLocation location;
  final Image localImage;
  final File image;

  Monkey({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.location,
    @required this.localImage,
    this.image,
  });
}

class MonkeyType {
  final String type;
  final Image typeImage;
  MonkeyType({
    @required this.type,
    @required this.typeImage,
  });
}
