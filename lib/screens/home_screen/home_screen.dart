import 'package:flutter/material.dart';
import 'package:website_generator_app/screens/home_screen/widget/reusable_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.blue.shade900),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.blue.shade900),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'We Provide AI Tools',
              style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const ReusableCard(
              imagePath: 'assets/images/website_design.png',
              text: 'Website Design',
            ),
            const ReusableCard(
              imagePath: 'assets/images/animation_effects.png',
              text: 'Adds Animation & Effects',
            ),
            const ReusableCard(
              imagePath: 'assets/images/functional_websites.png',
              text: 'Build Functional Websites',
            ),
            const ReusableCard(
              imagePath: 'assets/images/backend_functionalities.png',
              text: 'Integrate Backend Functionalities',
            ),
            const ReusableCard(
              imagePath: 'assets/images/allow_customization.png',
              text: 'Allow Customization',
            ),
          ],
        ),
      ),
    );
  }
}
