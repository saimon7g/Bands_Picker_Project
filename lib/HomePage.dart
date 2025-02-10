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

class Artcell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Artcell Details"),),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*1.0,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text("Artecll Music BD", style: TextStyle(fontWeight: FontWeight.bold),),
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
        ],
      ),
    );
  }
}

class NogorB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Nogor Baul"),
      ),
    );
  }
}