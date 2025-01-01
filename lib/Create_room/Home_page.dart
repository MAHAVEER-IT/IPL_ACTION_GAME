import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(125, 191, 228, 0.8),
                    Color.fromRGBO(8, 82, 177, 0.8),
                    Color.fromRGBO(9, 23, 158, 0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Button 1
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "CREATE ROOM",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                      wordSpacing: 4.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.red.shade100),
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red.shade200,
                    shadowColor: Colors.black,
                    elevation: 8,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              // Button 2
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ENTER CODE",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                      wordSpacing: 4.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.red.shade100),
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red.shade200,
                    shadowColor: Colors.black,
                    elevation: 8,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
