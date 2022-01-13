import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shomobs/animations/animations.dart';

class DetailPages extends StatefulWidget {
  final String image, item;

  const DetailPages({Key key, this.image, this.item}) : super(key: key);

  @override
  _DetailPagesState createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: 'red',
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 10,
                      offset: const Offset(0, 10))
                ]),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Center(
                          child: Icon(Icons.favorite_border, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: FadeAnimation(
                    1,
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.9),
                              Colors.black.withOpacity(.0)
                            ]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FadeAnimation(
                            1.3,
                            Text(
                              "Buy One, Get One",
                              style: GoogleFonts.mulish(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          FadeAnimation(
                            1.35,
                            Text(
                              widget.item,
                              style: GoogleFonts.mulish(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),

                          FadeAnimation(
                            1.4,
                            Text(
                              "Size",
                              style: GoogleFonts.mulish(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              FadeAnimation(
                                1.5,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "42",
                                      style: GoogleFonts.workSans(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.45,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "44",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.46,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "46",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.47,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "48",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.48,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "50",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.49,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "50",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                1.50,
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: Center(
                                    child: Text(
                                      "52",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 64,
                          ),
                          FadeAnimation(
                            1.5,
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Text(
                                  "Beli Sekarang!",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
