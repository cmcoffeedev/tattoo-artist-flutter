import 'package:flutter/material.dart';
import 'service_card.dart';

class ServicesSection extends StatelessWidget {
  ServicesSection({Key? key}) : super(key: key);

  final List<Service> services = [
    Service(
      title: 'Custom Designs',
      description: 'Unique tattoos crafted specifically for you, bringing your vision to life with artistic excellence.',
      icon: Icons.brush,
      imageUrl: 'https://images.unsplash.com/photo-1542382257-80dedb725088?auto=format&fit=crop&q=80',
    ),
    Service(
      title: 'Cover-Ups',
      description: 'Transform existing tattoos into new, beautiful pieces that better reflect your current style.',
      icon: Icons.auto_fix_high,
      imageUrl: 'https://images.unsplash.com/photo-1621607512022-6aecc4fed814?auto=format&fit=crop&q=80',
    ),
    Service(
      title: 'Traditional',
      description: 'Classic tattoo designs with bold lines and timeless appeal, rooted in traditional artistry.',
      icon: Icons.star,
      imageUrl: 'https://images.unsplash.com/photo-1611501275019-9b5cda994e8d?auto=format&fit=crop&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Services',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              return constraints.maxWidth > 800
                  ? _buildWideLayout()
                  : _buildNarrowLayout();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWideLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: services.map((service) => Expanded(
        child: ServiceCard(service: service),
      )).toList(),
    );
  }

  Widget _buildNarrowLayout() {
    return Column(
      children: services.map((service) => Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: ServiceCard(service: service),
      )).toList(),
    );
  }
}
