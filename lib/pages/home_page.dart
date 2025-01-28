import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroSection(
            title: 'Expert Tattoo Artistry',
            subtitle: 'Transform your vision into a timeless piece of art',
            imageUrl: 'https://images.unsplash.com/photo-1598371839696-5c5bb00bdc28?auto=format&fit=crop&q=80',
            onActionPressed: () {
              // TODO: Implement booking action
            },
            actionButtonText: 'Schedule Consultation',
          ),
          ServicesSection(),
          // More sections can be added here
        ],
      ),
    );
  }
}
