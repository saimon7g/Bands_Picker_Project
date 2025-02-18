
import 'package:bands_picker/ui/core/models/band_details_models.dart';
import 'package:bands_picker/ui/core/models/band_member_model.dart';
import 'package:bands_picker/ui/core/models/booking_date_model.dart';
import 'package:bands_picker/ui/pages/home_module/screen/band_details_screen.dart';
import 'package:bands_picker/ui/pages/home_module/screen/booking_policy_screen.dart';
import 'package:flutter/material.dart';


class BandPickerRoutes {
  static const String bandDetails = '/bandDetails';
  static const String bookingPolicies = '/bookingPolicies';

  static Map<String, WidgetBuilder> allRoutes() {
    return {
      bandDetails: (context) => BandDetails(),
      bookingPolicies: (context) => BookingPolicies(band: Band(bandName: "bandName", location: "location",
          members: [BandMember(name: "name", uuid: "uuid", role: "role")],
          numOfConcerts: 5, songType: "songType",
          wayOfTravel: "wayOfTravel", about: "about",
          minimumPrice: 400, bookingPolicy: ["a"], cancellationPolicy: ["askjdh"],
          coverPhotos: ["coverPhotos"], bookingDates: [BookingDate(date: DateTime.now(), location: "location", uuid: "uuid",
              inBangladesh: true)])),
    };
  }
}
