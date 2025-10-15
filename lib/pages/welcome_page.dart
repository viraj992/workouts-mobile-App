import 'package:flutter/material.dart';
import 'package:workoutapp_final/main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 231, 230, 230),
          ),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/exercises/welcome.png",
                width: double.infinity,
                height: 380,
                fit: BoxFit.contain,
              ),
              Text(
                "Make Your Body \nHealthy & Fit",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                "Plan your workouts, track progress, \nand stay fit every day!",
                style: TextStyle(fontSize: 17, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 45),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAppContent(), // ✅ same name
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 32),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 27),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
