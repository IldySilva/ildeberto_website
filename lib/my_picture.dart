import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliverPicture extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 130;
  @override
  double get maxExtent => 320;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: shrinkOffset >= minExtent
            ? FadeTransition(
          key: const ValueKey<bool>(true),
          opacity: const AlwaysStoppedAnimation<double>(1),
          child: Stack(
            children: [
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    width: 320,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          IconButton(
                              hoverColor: const Color(0xfff05053).withOpacity(0.6),
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.house,
                              )),
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
                              )),],),
                    )
                  ),
                ),
              ),


            ],
          ),
        )
            : FadeTransition(
          key: const ValueKey<bool>(false),
          opacity: const AlwaysStoppedAnimation<double>(1),
          child: Stack(
            children: [
              Container(
                width: 360,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/picture.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                width: 360,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xffe1eec3).withOpacity(0.2), const Color(0xfff05053).withOpacity(0.2)],
                    stops: const [0, 1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
