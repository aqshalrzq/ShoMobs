import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shomobs/animations/animations.dart';
import 'package:shomobs/component/item_dashboard.dart';

class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "ShoMobs",
          style: GoogleFonts.mulish(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    // State UI - Simulation Chip
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Center(
                            child: Text(
                              "Sweaters",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Center(
                            child: Text(
                              "Sneakers",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: Center(
                            child: Text(
                              "Hoodie",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Center(
                          child: Text(
                            "Cap",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Center(
                          child: Text(
                            "T-Shirt",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: FadeAnimation(
                        1, Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: Center(
                          child: Text(
                            "Jeans",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      ),
                    ),
                  ],
                ),
              ),

              // State UI - Item Dashboard
              const SizedBox(
                height: 24,
              ),
              FadeAnimation(1.5, itemDashboard(image: 'assets/cap.jpg', item: "Converse Core Cap", tag: 'cap', context: context)),
              FadeAnimation(1.6, itemDashboard(image: 'assets/shoes.jpg', item: "Nike Pro Air Pegassus 338", tag: 'shoes', context: context)),
              FadeAnimation(1.7, itemDashboard(image: 'assets/jeans.jpg', item: "Zalora - Levi Jean's", tag: 'jeans', context: context)),
              FadeAnimation(1.8, itemDashboard(image: 'assets/sweater.jpg', item: "Erigo Sweater", tag: 'sweater', context: context)),
              FadeAnimation(1.9, itemDashboard(image: 'assets/sneakers.jpg', item: "Air Jordan 1 Retro High OG", tag: 'sneakers', context: context)),
            ],
          ),
        ),
      ),
    );
  }
}
