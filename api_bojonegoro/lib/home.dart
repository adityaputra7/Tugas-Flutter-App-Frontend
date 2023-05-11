import 'package:flutter/material.dart';
import 'package:api_bojonegoro/home/view_home.dart';
import 'package:api_bojonegoro/kecamatan/view_kecamatan.dart';
import 'package:api_bojonegoro/info/view_info.dart';

class HomeApps extends StatefulWidget {
  const HomeApps({super.key});

  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Bojonegoro With API',
      routes: {
        '/': (BuildContext _) => const HomeView(),
        '/kecamatan': (BuildContext _) => const KecamatanView(),
        '/info': (BuildContext _) => const InfoView()
      },
      initialRoute: '/',
    );
  }
}
