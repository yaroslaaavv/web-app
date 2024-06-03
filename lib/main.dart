import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

void main() {
  runApp(const MyApp());
}

RgbColor background_Z_Colour = RgbColor(26, 26, 26);
var nftPrice = 10;


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
        body: Align(
          alignment: Alignment.center,
          child: Container(
            color: background_Z_Colour,
            child: const ConnectWalletPage(),
          ),
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
    return Align(
      alignment: Alignment.center,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$PUTIN',
            style: TextStyle(
                color: Colors.white, fontSize: 45,),
          ),
          SizedBox(height: 25,),
          Container(
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage('assets/images/zzz.jpg'),
            ),
          ),
          SizedBox(height: 25,),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: const Text('Connect wallet', style: TextStyle(color: Colors.white),),
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
      
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        toolbarHeight: 85,
        title: Text('MINT NFT', style: TextStyle(color: Colors.white, fontSize: 45),),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      // body: Column(
      //   children: [
      //     Text('MINT NFT', style: TextStyle(fontSize: 45),),
      //     Row(
      //       children: [
      //         ListView(),
      //         ListView(),
      //       ],
      //       // child: ElevatedButton(
      //       //   onPressed: () {
      //       //     Navigator.pop(context);
      //       //   },
      //       //   child: const Text('Go Back'),
      //       ),
      //   ],
      // ),
      body: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 10/13
                ),
                itemCount: 16,
                itemBuilder: (context, int i) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),]
                    ),
                    child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image(image: AssetImage('assets/images/nft.jpg',),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //alignment: Alignment.bottomLeft,
                                children: [
                                  Text('Price:', style: TextStyle(color: Colors.white, fontSize: 20),),
                                  Text('${nftPrice} TON', style: TextStyle(color: Colors.white, fontSize: 20)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                },
              ),

      ),
    );
  }
}
