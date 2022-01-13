import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shomobs/pages/details.dart';

Widget itemDashboard({image, item, tag, context}) {

  return Hero(
    tag: tag,
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPages(image: image, item: item,)));
      },
      child: Container(
        height: 250,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10,
              offset: const Offset(0, 10)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "For Sale",
                        style: GoogleFonts.mulish(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        item,
                        style: GoogleFonts.mulish(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Rp. 125.000,-",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    ),
  );
}