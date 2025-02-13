import 'package:flutter/material.dart';

class BandCard extends StatelessWidget {
  final String routeName, bandName, assetName;

  const BandCard({
    super.key,
    required this.routeName,
    required this.assetName,
    required this.bandName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 152,
      decoration: BoxDecoration(
        color: Colors.white,
        //border: Border.all(color: Colors.black),
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
          onPressed: () => Navigator.pushNamed(context, routeName),
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
                  "assets/$assetName.png",
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
                    bandName,
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