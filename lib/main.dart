import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

void main() {
  runApp(const MyApp());
}
RgbColor background_Z_Colour = RgbColor(26, 26, 26);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: background_Z_Colour,
          title: const Text('Named Routing'),
          centerTitle: true,
        ),
        body: Container(
          color: background_Z_Colour,
          child: const ConnectWalletPage(),
        ),

      ),
      initialRoute: '/',
      routes: {
        '/page2': (context) => const NftPage(),
      },
    );
  }
}

class ConnectWalletPage extends StatelessWidget {
  const ConnectWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('\$PUTIN',
            style: TextStyle(
                color: Colors.white,),
          ),
          Container(
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage('assets/images/zzz.jpg'),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: const Text('Move to Page 2', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}

class NftPage extends StatelessWidget {
  const NftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
