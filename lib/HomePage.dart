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