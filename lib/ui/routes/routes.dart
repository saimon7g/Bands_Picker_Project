import 'package:bands_picker/ui/pages/account_module/screen/account_screen.dart';
import 'package:flutter/material.dart';
import '../pages/home_module/screen/homePage_screen.dart';
import '../pages/booking_module/screen/booking_screen.dart';
import '../pages/message_module/screen/message_screen.dart';
import '../pages/splash_module/splash.dart';


class BandPickerRoutes {
  static const String bandDetails = '/bandDetails';
  static const String bookingPolicies = '/bookingPolicies';

  static Map<String, WidgetBuilder> allRoutes() {
    return {
      bandDetails: (context) => BandDetails(),
      bookingPolicies: (context) => BookingPolicies(),
    };
  }
}
