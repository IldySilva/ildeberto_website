import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ildeberto_website/my_picture.dart';
import 'custom_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  var size = const Size(0, 0);
  final ScrollController _scrollController = ScrollController();
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
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
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Container(
                    decoration:  BoxDecoration(
                        gradient: LinearGradient(
                  colors: [const Color(0xffd9a7c7).withOpacity(0.5), const Color(0xfffffcdc).withOpacity(0.5)],
                  stops: const [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ))),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(

                    height: size.height*0.8,
                    child: MouseRegion(
                        cursor: SystemMouseCursors.grab,
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child:
                              CustomScrollView(controller: _scrollController, scrollDirection: Axis.horizontal, slivers: [
                            const SliverPadding(padding: EdgeInsets.only(left: 40)),
                            SliverPersistentHeader(pinned: true, floating: false, delegate: SliverPicture()),
                            SliverList.list(
                              children: [
                                Container(
                                  width: size.width*0.45,
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
                                          endIndent: 300,
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          'A Software Engineer with focus on Mobile apps using Flutter & Server Side Systems with .NET C#',
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
                                  width: size.width * 0.4,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xfffaaca8),
                                        Color(0xff734f96),
                                      ],
                                      stops: [0, 1],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Text(
                                            "Creative Portfolio",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                            tabBarTheme: const TabBarTheme(
                                          labelColor: Colors.white,
                                          unselectedLabelColor: Colors.white70,
                                        )),
                                        child: TabBar(
                                          tabAlignment: TabAlignment.center,
                                          automaticIndicatorColorAdjustment: true,
                                            isScrollable: true,
                                            controller: tabController,
                                            tabs: const [
                                              Tab(
                                                text: 'All',
                                              ),
                                              Tab(
                                                text: 'Articles',
                                              ),
                                              Tab(
                                                text: 'Animations',
                                              ),
                                              Tab(
                                                text: 'Videos',
                                              ),
                                              Tab(
                                                text: 'Example Apps',
                                              ),
                                            ]),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          physics: const NeverScrollableScrollPhysics(),
                                          controller: tabController,
                                          children: [

                                            Container(color: Colors.white10,),
                                            Container(color: Colors.white30,),

                                            Container(color: Colors.blueGrey.shade50,),
                                            Container(color: Colors.purple.shade50,),
                                            Container(color: Colors.white10,),


                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
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
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
