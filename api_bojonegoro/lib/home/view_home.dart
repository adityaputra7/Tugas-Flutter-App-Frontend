import 'package:flutter/material.dart';
import 'package:api_bojonegoro/home/controller_home.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Kabupaten Bojonegoro With API',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins'),
          ),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(51, 205, 77, 1),
                    Color.fromARGB(255, 17, 159, 53)
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage('../images/pngwing.png'),
                  fit: BoxFit.fill,
                ),
              ),
              accountEmail: Text('adityaputrairfandi@bojonegoro.go.id'),
              accountName: Text('Aditya Putra Irfandi'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text('Home'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kecamatan'),
              title: Text('Kecamatan'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/info'),
              title: Text('Info'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
        body: SingleChildScrollView());
  }
}
