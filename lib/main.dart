
import 'package:bands_picker/Accounts.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Bookings.dart';
import 'Message.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

   final List<Widget> _pages = <Widget>[
    HomePage(),
    BookingsPage(),
    MessagePage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home ,color: Colors.black,),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,color: Colors.black,),
            label: 'Bookings.dart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Colors.black,),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black,),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}




