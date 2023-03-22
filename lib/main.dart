import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'DrawerFlutter';
  // This widget is the root of your application.
  //

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Act 3 Drawer Lopez'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xff764abc)),
              accountName: Text(
                "Derek Alejandro Lopez Cervantes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "a.20308051280515@cbtis128.edu.mx",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,
              ),
              title: const Text('Instrumentos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.games,
              ),
              title: const Text('Juegos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Cuenta'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.store,
              ),
              title: const Text('Sucursales'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('Acerca de'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'Sounds App',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2019 Company',
              aboutBoxChildren: [
                ///Content goes here...
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _key.currentState!.openDrawer(); //<-- SEE HERE
              },
              child: const Text(
                'Boton Drawer',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
} //wkhekfhw
