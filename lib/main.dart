import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/contact_page.dart';
import 'pages/gallery_page.dart';
import 'pages/service_detail_page.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/services_section.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tattoo Artist',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey.shade900,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Scaffold(
              extendBodyBehindAppBar: true,
              appBar: CustomAppBar(),
              drawer: CustomDrawer(),
              body: HomePage(),
            ),
        '/contact': (context) => const Scaffold(
              appBar: CustomAppBar(),
              drawer: CustomDrawer(),
              body: ContactPage(),
            ),
        '/gallery': (context) => const Scaffold(
              appBar: CustomAppBar(),
              drawer: CustomDrawer(),
              body: GalleryPage(),
            ),
        '/services': (context) => Scaffold(
              appBar: const CustomAppBar(),
              drawer: const CustomDrawer(),
              body: ServicesSection(),
            ),
      },
    );
  }
}
