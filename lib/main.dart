import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BiodataScreen(),
    );
  }
}

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIODATA'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header / Pangalan
            const Center(
              child: Text(
                'PAUL CHRISTIAN P. SANTIAGO',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text('Blk 22 Lot 10, Tañong Malabon City'),
            ),
            const Center(
              child: Text('Contact: 09564805678 | paulsantiago296@gmail.com'),
            ),
            const SizedBox(height: 20),

            // Objective
            _buildHeader('OBJECTIVE'),
            const Text(
              'To obtain a part-time position where I can provide excellent customer service and contribute to daily operations.',
            ),
            const SizedBox(height: 15),

            // Personal Information
            _buildHeader('PERSONAL INFORMATION'),
            _buildRow('Date of Birth:', 'September 14, 2005'),
            _buildRow('Place of Birth:', 'Dagat-Dagatan, Caloocan City'),
            _buildRow('Age:', '20'),
            _buildRow('Gender:', 'Male'),
            _buildRow('Civil Status:', 'Single'),
            _buildRow('Religion:', 'Catholic'),
            _buildRow('Father\'s Name:', 'Allan Santiago'),
            _buildRow('Mother\'s Name:', 'Alona Pacis'),
            _buildRow('Height / Weight:', "5'5 / 65 kg"),
            const SizedBox(height: 15),

            // Educational Background
            _buildHeader('EDUCATIONAL BACKGROUND'),
            _buildRow('Tertiary:', 'Global Reciprocal College (2024 - Present)\nBS Information Technology'),
            _buildRow('Upper Secondary:', 'College Of Saint Amatiel (2022 - 2024)'),
            _buildRow('Secondary:', 'Tañong National High School (2018 - 2022)'),
            _buildRow('Primary:', 'Bakal 2 Elementary School (2014 - 2017)'),
            const SizedBox(height: 15),

            // Skills
            _buildHeader('SKILLS'),
            const Text('• Proficient in basic LAN Cable with RJ45'),
            const Text('• Basic knowledge in MS Word, PowerPoint, GitHub, CapCut, WPS'),
            const Text('• Hardworking, Punctual, and Teamwork-oriented'),
            const Text('• Good Verbal Communication & Customer Service'),
            const SizedBox(height: 15),

            // Work Experience
            _buildHeader('WORK EXPERIENCE'),
            _buildRow('Position:', 'Stove Installer / Deliverboy'),
            _buildRow('Inclusive Dates:', '2023 – 2025'),
            const SizedBox(height: 15),

            // Character References
            _buildHeader('CHARACTER REFERENCES'),
            _buildRow('Erika Buenaventura:', '09066512563'),
            _buildRow('Mark Joseph Viscayca:', '09565721746'),
            _buildRow('Jamal Pango:', '09566527673'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Section Header Line
  Widget _buildHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Divider(color: Colors.black, thickness: 1),
        ],
      ),
    );
  }

  // Label & Value Row para sa Biodata Look
  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}