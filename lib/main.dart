import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Podtrax'),
          actions: [
            Icon(
              CupertinoIcons.chat_bubble,
            ),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kaveh Norozi'),
                      SizedBox(
                        width: 2,
                      ),
                      Text('Developer'),
                      SizedBox(
                        width: 4,
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.location),
                          Text('Tehran,Iran')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using '),
            )
          ],
        ));
  }
}
