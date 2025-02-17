
import 'package:bands_picker/ui/core/models/band_details_models.dart';
import 'package:bands_picker/ui/routes/routes.dart';
import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BandDetails extends StatefulWidget {
  @override
  _BandDetailsState createState() => _BandDetailsState();
}

class _BandDetailsState extends State<BandDetails> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  late Band band;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Band receivedBand = ModalRoute.of(context)?.settings.arguments as Band;
    setState(() {
      band = receivedBand;
      images = band.coverPhotos;
    });
  }

  List<String> images = [];


  void _nextPage() {
    if (_currentPage < images.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${band.bandName} Details")),
      backgroundColor: AppColor.backgroundColor,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 246,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 350,
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: AppColor.arrowIconColor),
                    onPressed: _previousPage,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: AppColor.arrowIconColor),
                    onPressed: _nextPage,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 8,),
            child: Text("${band.bandName}",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("${band.location}",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 10,
                height: 15 / 10,
                letterSpacing: 0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Band_Details_Page/user.svg",
                      //semanticsLabel: 'User Icon',
                      //placeholderBuilder: (BuildContext context) => CircularProgressIndicator(),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5,),
                    Text("${band.members.length} musicians"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Band_Details_Page/PlayCircle.svg",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5,),
                    Text("${band.numOfConcerts} Concert"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Band_Details_Page/MusicNotes.svg",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5,),
                    Text("${band.songType}"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Band_Details_Page/AirplaneInFlight.svg",
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(height: 5,),
                    Text("${band.wayOfTravel}"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("About ${band.bandName}",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("${band.about}",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 10,
                height: 15 / 10,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("Price Details",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 30 / 20,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/Band_Details_Page/Tk(Stroke).svg",
                  width: 12,
                  height: 15,
                ),
                SizedBox(width: 5,),
                Text("Start from ${band.minimumPrice}",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 20 / 14,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.fromLTRB(60, 5, 60, 5),
            width: 328,
            height: 40,
            decoration: BoxDecoration(
              color: AppColor.bookingReqColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.bookingReqColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Makes the button square
                ),
              ),
              onPressed: ()=> Navigator.pushNamed(context, BandPickerRoutes.bookingPolicies, arguments: band),
              child: Center(
                child: Text(
                  "Request For Book",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 24 / 16,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}