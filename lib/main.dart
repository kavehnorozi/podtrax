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
        primaryColor: Color.fromARGB(255, 202, 55, 104),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyText2: TextStyle(
                fontSize: 15, color: Color.fromARGB(200, 255, 255, 255)),
            bodyText1: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(200, 255, 255, 255),
            ),
            headline6: TextStyle(fontWeight: FontWeight.w900),
            subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kaveh Norozi',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Develo per'),
                        SizedBox(
                          width: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.location,
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color,
                              size: 18,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Tehran,Iran',
                              style: Theme.of(context).textTheme.caption,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Skills',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w900)),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    CupertinoIcons.chevron_down,
                    size: 12,
                  ),
                ],
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.white12),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Xd.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Adobe XD'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
