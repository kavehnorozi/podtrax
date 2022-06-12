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
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          filled: true,
        ),
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum SkillType {
  photoshop,
  xd,
  illustrator,
  afterEffect,
  areo,
  premiere,
}

class _MyHomePageState extends State<MyHomePage> {
  SkillType skillType = SkillType.photoshop;
  void updateSelectedSkill(SkillType type) {
    setState(() {
      this.skillType = type;
    });
  }

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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
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
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .color,
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
              Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Skills(
                      type: SkillType.photoshop,
                      title: 'Photoshop',
                      ImageUrl: 'assets/images/Photoshop.png',
                      ShadowColor: Colors.blue,
                      isActive: skillType == SkillType.photoshop,
                      onTap: () {
                        updateSelectedSkill(SkillType.photoshop);
                      },
                    ),
                    Skills(
                      type: SkillType.xd,
                      title: 'Adobe XD',
                      ImageUrl: 'assets/images/Xd.png',
                      ShadowColor: Color.fromARGB(255, 243, 33, 191),
                      isActive: skillType == SkillType.xd,
                      onTap: () {
                        updateSelectedSkill(SkillType.xd);
                      },
                    ),
                    Skills(
                      type: SkillType.illustrator,
                      title: 'Adobe Illustrator',
                      ImageUrl: 'assets/images/Illustrator.png',
                      ShadowColor: Color.fromARGB(255, 211, 214, 14),
                      isActive: skillType == SkillType.illustrator,
                      onTap: () {
                        updateSelectedSkill(SkillType.illustrator);
                      },
                    ),
                    Skills(
                      type: SkillType.afterEffect,
                      title: 'After effect',
                      ImageUrl: 'assets/images/After Effects.png',
                      ShadowColor: Color.fromARGB(255, 14, 111, 190),
                      isActive: skillType == SkillType.afterEffect,
                      onTap: () {
                        updateSelectedSkill(SkillType.afterEffect);
                      },
                    ),
                    Skills(
                      type: SkillType.areo,
                      title: 'Adobe Areo',
                      ImageUrl: 'assets/images/Aero.png',
                      ShadowColor: Colors.green,
                      isActive: skillType == SkillType.areo,
                      onTap: () {
                        updateSelectedSkill(SkillType.areo);
                      },
                    ),
                    Skills(
                      type: SkillType.premiere,
                      title: 'Premiere',
                      ImageUrl: 'assets/images/Premiere Pro.png',
                      ShadowColor: Color.fromARGB(255, 86, 61, 223),
                      isActive: skillType == SkillType.premiere,
                      onTap: () {
                        updateSelectedSkill(SkillType.premiere);
                      },
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Personal information',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontWeight: FontWeight.w900)),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(CupertinoIcons.at)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(CupertinoIcons.lock)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Skills extends StatelessWidget {
  final SkillType type;
  final String title;
  final String ImageUrl;
  final Color ShadowColor;
  final bool isActive;
  final Function() onTap;

  const Skills({
    Key? key,
    required this.title,
    required this.ImageUrl,
    required this.ShadowColor,
    required this.isActive,
    required this.type,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 100,
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white12,
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isActive
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: ShadowColor.withOpacity(.7),
                        blurRadius: 10,
                      )
                    ])
                  : null,
              child: Image.asset(
                ImageUrl,
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
