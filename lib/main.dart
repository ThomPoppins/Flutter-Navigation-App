import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/home_page.dart';
import 'package:flutter_navigation_app/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      // Set the theme colors
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF6E27C0, {
          50: Color(0xFFEDE7F6),
          100: Color(0xFFD1C4E9),
          200: Color(0xFFB39DDB),
          300: Color(0xFF9575CD),
          400: Color(0xFF7E57C2),
          500: Color(0xFF6E27C0),
          600: Color(0xFF5E35B1),
          700: Color(0xFF512DA8),
          800: Color(0xFF4527A0),
          900: Color(0xFF311B92),
        }),
      ),
      // Set the home page
      home: const RootPage(),
    );
  }
}

// Root application page
class RootPage extends StatefulWidget {
  // Constructor
  const RootPage({super.key});

  // Create the state
  @override
  State<RootPage> createState() => _RootPageState();
}

// Root application page state
class _RootPageState extends State<RootPage> {
  // Create a variable to store the current page index
  int currentPage = 0;
  // Create a list of pages
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];

  // Build method for the state
  @override
  Widget build(BuildContext context) {
    // Scaffold widget
    return Scaffold(
      // AppBar widget
      appBar: AppBar(
        // AppBar title
        title: const Text("Thom's Flutter App"),
      ),
      body: pages[currentPage],
      // Add button floating on the body
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Add button pressed");
        },
        child: const Icon(Icons.add),
      ),
      // Bottom navigation bar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
