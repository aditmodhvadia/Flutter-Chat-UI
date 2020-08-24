import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0b0626),
        accentColor: Color(0xFF40b3f5),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    FriendsScreen(),
    HomeScreen()
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.people_outline,
    Icons.more_horiz
  ];

  final List<String> _titles = ['Home', 'Friends', 'More'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: _screens.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: IndexedStack(
            children: _screens,
            index: _selectedIndex,
          ),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.transparent,
            onTap: _onItemTapped,
            tabs: _icons
                .asMap()
                .map((i, icon) => MapEntry(
                    i,
                    Tab(
                      icon: Icon(
                        icon,
                        color: i == _selectedIndex
                            ? Colors.blue[500]
                            : Colors.white,
                      ),
                      child: Text(
                        _titles[i],
                        style: TextStyle(
                            color: i == _selectedIndex
                                ? Colors.blue[500]
                                : Colors.white),
                      ),
                    )))
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
