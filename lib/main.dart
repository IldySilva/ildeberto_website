import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ildeberto_website/my_picture.dart';
import 'dart:math' as math;
import 'custom_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textButtonTheme:
              TextButtonThemeData(style: TextButton.styleFrom(textStyle: const TextStyle(color: Colors.white))),
          iconTheme: const IconThemeData(size: 20, color: Colors.white70),
          useMaterial3: true,
        ),
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black87,
            body: Stack(
              children: [
                Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                  colors: [Color(0xffd9a7c7), Color(0xfffffcdc)],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))),
                MouseRegion(
                    cursor: SystemMouseCursors.grab,
                    child: ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child:
                          CustomScrollView(controller: _scrollController, scrollDirection: Axis.horizontal, slivers: [
                        SliverPersistentHeader(pinned: true, floating: false, delegate: SliverPicture()),
                        SliverList.list(
                          children: [
                            Container(
                              width: 500,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xff734f96), Color(0xffff9472)],
                                  stops: [0, 1],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Hello,\nI'm Ildeberto",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                    const Divider(
                                      endIndent: 200,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'A Mobile Software Developer, with more than 4 years of experience. I have a great learning ability, Currently Working with Flutter / Dart and .NET Core for full development',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.github,
                                            )),
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.stackOverflow,
                                            )),
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.linkedin,
                                            )),
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.twitter,
                                            )),
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.medium,
                                            )),
                                        IconButton(
                                            hoverColor: const Color(0xfff05053).withOpacity(0.6),
                                            onPressed: () {},
                                            icon: const Icon(
                                              FontAwesomeIcons.youtube,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        _scrollController.animateTo(_scrollController.offset + 500,
                                            duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
                                      },
                                      child: const Icon(Icons.keyboard_arrow_right_sharp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 500,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xffddd6f3), Color(0xfffaaca8)],
                                  stops: [0, 1],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                            Container(
                              width: 500,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xfffeac5e), Color(0xffc779d0)],
                                  stops: [
                                    0,
                                    01,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                            Container(
                              width: 700,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ]),
                    ).animate().moveX().fade()),
              ],
            ),
          ),
        ));
  }
}
