import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints:
          const ScreenBreakpoints(desktop: 900, tablet: 650, watch: 250),
      mobile: OrientationLayoutBuilder(
        portrait: (_) => const HomeMobilePortrait(),
        landscape: (_) => const HomeMobileLandscape(),
      ),
      desktop: const HomeDesktop(),
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Desktop"),
        ),
      ),
    );
  }
}

class HomeMobilePortrait extends StatelessWidget {
  const HomeMobilePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Home Mobile Portrait"),
        ),
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("Home Mobile Landscape"),
        ),
      ),
    );
  }
}
