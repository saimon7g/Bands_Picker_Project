import 'package:bands_picker/ui/core/models/band_details_models.dart';
import 'package:flutter/material.dart';
import '../../../../routes/routes.dart';
import '../../../../utils/constants/appsColor.dart';

class BandCard extends StatelessWidget {
  final Band band;

  const BandCard({
    super.key,
    required this.band,
  });

  String get routeName => "/${band.bandName.replaceAll(' ', '')}";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.45,
      height: 152,
      decoration: BoxDecoration(
        color: AppColor.bandCardBoxDecorationColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, BandPickerRoutes.bandDetails, arguments: band),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  "assets/${band.bandName}.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  color: Colors.white,
                  child: Text(
                    band.bandName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 24 / 16,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}