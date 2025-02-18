
import 'package:bands_picker/ui/core/models/band_details_models.dart';
import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:bands_picker/ui/utils/constants/bullet.dart';
import 'package:flutter/material.dart';

class BookingPolicies extends StatelessWidget {
  final Band band;
  const BookingPolicies({super.key, required this.band});

  @override
  Widget build(BuildContext context) {
    final Band band = ModalRoute.of(context)!.settings.arguments as Band;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(title: Text("${band.bandName} Booking Polices"),),
      body: Column(
        children: band.bookingPolicy.map((policy) {
          return Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Text(Bullet.bulletString),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    policy,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      height: 15 / 19.5,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}