import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F4F8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Profile Avatar
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFF6750A4),
                      child: Text(
                        "A",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Name
                    const Text(
                      "Alex",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Role
                    const Text(
                      "Computer Science Student",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 25),

                    const Divider(),

                    const SizedBox(height: 15),

                    // Email
                    contactRow(Icons.email_outlined, "alex@example.com"),

                    const SizedBox(height: 18),

                    // Phone
                    contactRow(Icons.phone_outlined, "+91 98765 xxxxx"),

                    const SizedBox(height: 18),

                    // Location
                    contactRow(Icons.location_on_outlined, "Chennai, India"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget contactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF6750A4), size: 23),

        const SizedBox(width: 15),

        Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
      ],
    );
  }
}
