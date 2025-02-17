import 'package:bands_picker/ui/pages/home_module/controller/home_controller.dart';
import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:bands_picker/ui/utils/constants/bullet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../core/models/band_details_models.dart';
import 'ReUsableWidget/BandsCardContainer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Center(
            child: Container(
              width: 360,
              height: 64,
              child: Image.asset("assets/Frame 11111.png", fit: BoxFit.contain),
            ),
          ),
        ),
        body: GetBuilder<HomeController>(
          builder: (home) {
            return ListView(
            children: [
              Container(
                width: 328,
                height: 50,
                //margin: EdgeInsets.fromLTRB(16, 40, 0, 0),
                padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: SvgPicture.asset(
                        "assets/search.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      height: 19.5 / 13,
                      letterSpacing: 0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (value) {
                    print('Search query: $value');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 10, 5, 3),
                child: Text(
                    'Featured',
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    height: 19.5 / 13,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 10,8,3),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BandCard(
                          band: home.band[0]
                        ),
                        BandCard(
                          band: home.band[1]
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BandCard(
                          band: home.band[2]
                        ),
                        BandCard(
                          band: home.band[3]
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 10, 5, 3),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    height: 19.5 / 13,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 10,5,3),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BandCard(
                          band: home.band[4]
                        ),
                        BandCard(
                          band: home.band[5]
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BandCard(
                          band: home.band[6]
                        ),
                        BandCard(
                          band: home.band[7]
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
                  );
          }
        )
    );
  }
}