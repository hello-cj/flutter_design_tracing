import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B63C8),
        centerTitle: true,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 32),

            // Water drop icon
            const Icon(
              Icons.water_drop,
              size: 90,
              color: Color(0xFF409EFF),
            ),
            const SizedBox(height: 16),

            // Headline + subtitle
            const Text(
              'Stay Hydrated!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Build a healthy daily habit',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF4B5563),
              ),
            ),
            const SizedBox(height: 24),

            // Goal card (extra side margin so it is narrower than the tips)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Daily Water Goal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4B5563),
                      ),
                    ),
                    Text(
                      '8',
                      style: TextStyle(
                        fontSize: 84,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF2646B5),
                        height: 1.2,
                      ),
                    ),
                    Text(
                      'glasses per day',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4B5563),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Tip boxes
            const TipBox(text: 'Drink water regularly'),
            const SizedBox(height: 8),
            const TipBox(text: 'Bring your water bottle'),
            const SizedBox(height: 16),

            // Footer
            const Text(
              'Every glass counts!',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF4B5563),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable stateless widget for the two light-blue boxes
class TipBox extends StatelessWidget {
  final String text;

  const TipBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFDBEAFE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF2540B5),
        ),
      ),
    );
  }
}