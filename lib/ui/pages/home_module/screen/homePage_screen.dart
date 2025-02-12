import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset("assets/Frame 1.png", width: 100, height: 100),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //filled: true,
                //fillColor: Colors.grey[200],
              ),
              onChanged: (value) {
                print('Search query: $value');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Featured', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/Artcell'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Image.asset(
                                "assets/Artcell.png",
                                fit: BoxFit.fill,
                                width: double.infinity,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.white,
                                child: Text(
                                  "Artcell",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '/NogorB'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Image.asset(
                                  "assets/Nogor Baul.png",
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  child: Text(
                                    "Nogor Baul",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/Warfaze.png",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "Warfaze",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/Miles.png",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "Miles",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Popular', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/Ashes.png",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "Ashes",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/LRB.png",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "LRB",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/Chirkut.png.jpg",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "Chirkut",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Image.asset(
                              "assets/Nemesis.png.jpg",
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: Text(
                                "Nemesis",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ListView(
          //   children: [
          //     Text('Featured'),
          //   ],
          // ),
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
          Text("Artecll Music BD", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
              color: Colors.blue,
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

class BookingPolicies extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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