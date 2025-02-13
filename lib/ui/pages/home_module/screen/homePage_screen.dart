import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            padding: EdgeInsets.fromLTRB(8, 3, 5, 3),
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
          // Padding(
          //   padding: EdgeInsets.fromLTRB(8, 3, 5, 3),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       prefixIcon: Icon(Icons.search),
          //       hintText: 'Search',
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10.0),
          //       ),
          //       filled: true,
          //       fillColor: Colors.white,
          //     ),
          //     onChanged: (value) {
          //       print('Search query: $value');
          //     },
          //   ),
          // ),
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
            padding: EdgeInsets.fromLTRB(8, 10,5,3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      routeName: '/Artcell',
                      bandName: 'Artcell',
                      assetName: 'Artcell',
                    ),
                    BandCard(
                      routeName: '/NogorB',
                      bandName: 'Nogor Baul',
                      assetName: 'Nogor Baul',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      routeName: '/warfaze',
                      bandName: 'Warfaze',
                      assetName: 'Warfaze',
                    ),
                    BandCard(
                      routeName: '/miles',
                      bandName: 'Miles',
                      assetName: 'Miles',
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
                      routeName: '/Artcell',
                      bandName: 'Ashes',
                      assetName: 'Ashes',
                    ),
                    BandCard(
                      routeName: '/NogorB',
                      bandName: 'LRB',
                      assetName: 'LRB',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      routeName: '/Artcell',
                      bandName: 'Chirkut',
                      assetName: 'Chirkut',
                    ),
                    BandCard(
                      routeName: '/NogorB',
                      bandName: 'Nemesis',
                      assetName: 'Nemesis',
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


class Artcell extends StatefulWidget {
  @override
  _ArtcellState createState() => _ArtcellState();
}

class _ArtcellState extends State<Artcell> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> images = [
    "assets/Artcell.png",
    "assets/Ashes.png",
  ];

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
      appBar: AppBar(title: Text("Artcell Details")),
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
          Text("Artecll Music BD",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              height: 30 / 20,
              letterSpacing: 0,
            ),
          ),
          SizedBox(height: 8,),
          Text("Dhaka, Bangladesh",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 10,
              height: 15 / 10,
              letterSpacing: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/Band_Details_Page/user.svg",
                    width: 20,
                    height: 20,
                  ),
                  //Icon(Icons.person),
                  SizedBox(height: 5,),
                  Text("5 Musician"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("15 Concert"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("Metal Band"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.flight),
                  SizedBox(height: 5,),
                  Text("Way of journey"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("About Artcell", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("Artcell is a Bangladeshi progressive metal band formed in 23 October 1999, "
              "by vocalist and riff guitarist George Lincoln D'Costa, lead guitarist Ershad Zaman, "
              "bassist Saef Al Nazi Cézanne and drummer Kazi Sajjadul Asheqeen Shaju."),
          SizedBox(height: 20,),
          Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Row(
            children: [
              Icon(Icons.attach_money),
              Text("Start from 40,000"),
            ],
          ),
          ElevatedButton(
            onPressed: ()=> Navigator.pushNamed(context, '/bookingPolicies'),
            child: Container(
              color: AppColor.bookingReqColor,
              child: Center(
                child: Text(
                  "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class Artcell extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Artcell Details"),),
//       body: ListView(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width*1.0,
//             height: 350,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               border: Border.all(
//                 color: Colors.black,
//                 width: 3,
//               ),
//             ),
//           ),
//           SizedBox(height: 20,),
//           Text("Artecll Music BD", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//           SizedBox(height: 15,),
//           Text("Dhaka, Bangladesh"),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   Icon(Icons.person),
//                   SizedBox(height: 5,),
//                   Text("5 Musician"),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.audiotrack),
//                   SizedBox(height: 5,),
//                   Text("15 Concert"),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.audiotrack),
//                   SizedBox(height: 5,),
//                   Text("Metal Band"),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Icon(Icons.flight),
//                   SizedBox(height: 5,),
//                   Text("Way of journey"),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(height: 20,),
//           Text("About Artcell", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//           Text("Artcell is a Bangladeshi progressive metal band formed in 23 October 1999, "
//               "by vocalist and riff guitarist George Lincoln D'Costa, lead guitarist Ershad Zaman, "
//               "bassist Saef Al Nazi Cézanne and drummer Kazi Sajjadul Asheqeen Shaju."),
//           SizedBox(height: 20,),
//           Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//           Row(
//             children: [
//               Icon(Icons.attach_money),
//               Text("Start from 40,000"),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: ()=> print("They are booking"),
//             child: Container(
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class NogorB extends StatefulWidget {
  @override
  _NogorBState createState() => _NogorBState();
}

class _NogorBState extends State<NogorB> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> images = [
    "assets/Nogor Baul.png",
    "assets/Ashes.png",
  ];

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
      appBar: AppBar(title: Text("Nogor Baul Details")),
      backgroundColor: AppColor.backgroundColor,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 3),
            ),
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
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: _previousPage,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: _nextPage,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("Nogor Baul Music BD", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 15,),
          Text("Dhaka, Bangladesh"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.person),
                  SizedBox(height: 5,),
                  Text("5 Musician"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("15 Concert"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("Metal Band"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.flight),
                  SizedBox(height: 5,),
                  Text("Way of journey"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("About Nogor Baul", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("Artcell is a Bangladeshi progressive metal band formed in 23 October 1999, "
              "by vocalist and riff guitarist George Lincoln D'Costa, lead guitarist Ershad Zaman, "
              "bassist Saef Al Nazi Cézanne and drummer Kazi Sajjadul Asheqeen Shaju."),
          SizedBox(height: 20,),
          Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Row(
            children: [
              Icon(Icons.attach_money),
              Text("Start from 40,000"),
            ],
          ),
          ElevatedButton(
            onPressed: ()=> print("They are booking"),
            child: Container(
              color: AppColor.bookingReqColor,
              child: Center(
                child: Text(
                  "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Warfaze extends StatefulWidget {
  @override
  _WarfazeState createState() => _WarfazeState();
}

class _WarfazeState extends State<Warfaze> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> images = [
    "assets/Artcell.png",
    "assets/Ashes.png",
  ];

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
        appBar: AppBar(title: Text("Warfaze Details")),
        backgroundColor: AppColor.backgroundColor,
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
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
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: _previousPage,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: _nextPage,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Warfaze Music BD", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: AppColor.backgroundColor),),
            SizedBox(height: 15,),
            Text("Dhaka, Bangladesh"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.person),
                    SizedBox(height: 5,),
                    Text("5 Musician"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.audiotrack),
                    SizedBox(height: 5,),
                    Text("15 Concert"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.audiotrack),
                    SizedBox(height: 5,),
                    Text("Metal Band"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flight),
                    SizedBox(height: 5,),
                    Text("Way of journey"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("About Artcell", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Artcell is a Bangladeshi progressive metal band formed in 23 October 1999, "
                "by vocalist and riff guitarist George Lincoln D'Costa, lead guitarist Ershad Zaman, "
                "bassist Saef Al Nazi Cézanne and drummer Kazi Sajjadul Asheqeen Shaju."),
            SizedBox(height: 20,),
            Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Row(
              children: [
                Icon(Icons.attach_money),
                Text("Start from 40,000"),
              ],
            ),
            ElevatedButton(
              onPressed: ()=> Navigator.pushNamed(context, '/bookingPolicies'),
              child: Container(
                color: AppColor.bookingReqColor,
                child: Center(
                  child: Text(
                    "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

class Miles extends StatefulWidget {
  @override
  _MilesState createState() => _MilesState();
}

class _MilesState extends State<Miles> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> images = [
    "assets/Artcell.png",
    "assets/Ashes.png",
  ];

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
        appBar: AppBar(title: Text("Miles Details")),
        backgroundColor: AppColor.backgroundColor,
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
              ),
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
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: _previousPage,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: _nextPage,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text("Miles Music BD", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: AppColor.backgroundColor),),
            SizedBox(height: 15,),
            Text("Dhaka, Bangladesh"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.person),
                    SizedBox(height: 5,),
                    Text("5 Musician"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.audiotrack),
                    SizedBox(height: 5,),
                    Text("15 Concert"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.audiotrack),
                    SizedBox(height: 5,),
                    Text("Metal Band"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flight),
                    SizedBox(height: 5,),
                    Text("Way of journey"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("About Artcell", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Artcell is a Bangladeshi progressive metal band formed in 23 October 1999, "
                "by vocalist and riff guitarist George Lincoln D'Costa, lead guitarist Ershad Zaman, "
                "bassist Saef Al Nazi Cézanne and drummer Kazi Sajjadul Asheqeen Shaju."),
            SizedBox(height: 20,),
            Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Row(
              children: [
                Icon(Icons.attach_money),
                Text("Start from 40,000"),
              ],
            ),
            ElevatedButton(
              onPressed: ()=> Navigator.pushNamed(context, '/bookingPolicies'),
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

class BookingPolicies extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("\u2022"),
                SizedBox(width: 5,),
                Text("What are the reasons of flight cancellation when atmorspheric pressure is 1052 hPa"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}