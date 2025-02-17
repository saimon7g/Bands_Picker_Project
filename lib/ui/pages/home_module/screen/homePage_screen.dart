import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:bands_picker/ui/utils/constants/bullet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/models/band_details_models.dart';
import '../../../routes/routes.dart';
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
        body: ListView(
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
                      band: bands[0]
                    ),
                    BandCard(
                      band: bands[1]
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[2]
                    ),
                    BandCard(
                      band: bands[3]
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
                      band: bands[4]
                    ),
                    BandCard(
                      band: bands[5]
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[6]
                    ),
                    BandCard(
                      band: bands[7]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}


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

class BookingPolicies extends StatelessWidget {

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