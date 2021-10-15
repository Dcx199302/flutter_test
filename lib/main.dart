import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const Argot());
}

class Argot extends StatelessWidget {
  const Argot({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arogt App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    SizedBox(
      child: Text('123'),
      // color: Colors.green[400],
      width: 100.0,
      height: 100.0,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
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
        title: const Text(
          'Argot',
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              // 长按按钮时会显示此文本并用于辅助功能
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('thirdly页面'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondScreen();
                }));
              },
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      // body: const MyHomePageState(),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //       backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //       backgroundColor: Colors.purple,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //       backgroundColor: Colors.pink,
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                _onItemTapped(0);
              },
              icon: const Icon(Icons.home),
              tooltip: 'Open navigation menu',
              focusColor: Colors.red,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(1);
              },
              icon: const Icon(Icons.business),
              tooltip: 'Open navigation menu',
              focusColor: Colors.red,
              iconSize: 30.0,
            ),
            const IconButton(
              onPressed: null,
              icon: Placeholder(
                color: Colors.transparent,
                fallbackHeight: 0.0,
              ),
              tooltip: 'Open navigation menu',
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(2);
              },
              icon: const Icon(Icons.school),
              tooltip: 'Open navigation menu',
              focusColor: Colors.red,
              iconSize: 30.0,
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(3);
              },
              icon: const Icon(Icons.settings),
              tooltip: 'Open navigation menu',
              focusColor: Colors.red,
              iconSize: 30.0,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Argot',
//         ),
//         leading: Builder(
//           builder: (BuildContext context) {
//             return IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               // 长按按钮时会显示此文本并用于辅助功能
//               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//             );
//           },
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.message),
//               title: const Text('thirdly页面'),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const SecondScreen();
//                 }));
//               },
//             ),
//             const ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//             ),
//             const ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//             ),
//           ],
//         ),
//       ),
//       // body: const MyHomePageState(),
//       body: const Text('123'),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   child: Container(height: 50.0),
      // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {},
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }
