import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color(0xff425AD4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 8, color: Color(0xff2129D3))),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              foregroundImage: AssetImage('assets/images/myImage.png'),
            ),
          ),
          Text(
            'Shashank L K',
            style: GoogleFonts.italianno(color: Colors.white, fontSize: 48.0),
          ),
          SizedBox(
            height: 100.0,
            child: ListView(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    height: 50.0,
                    width: 150.0,
                    color: Colors.deepOrange),
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    height: 50.0,
                    width: 150.0,
                    color: Colors.deepOrange),
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    height: 50.0,
                    width: 150.0,
                    color: Colors.deepOrange),
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    height: 50.0,
                    width: 150.0,
                    color: Colors.deepOrange),
              ],
            ),
          ),
          Text(
            'FUTTER DEVELOPER',
            style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 2.0,
            color: Colors.white,
            indent: MediaQuery.sizeOf(context).width * 0.25,
            endIndent: MediaQuery.sizeOf(context).width * 0.25,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            height: 50.0,
            width: 300.0,
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: Row(children: [
              Icon(
                Icons.phone,
                color: Color(0xff425AD4),
              ),
              VerticalDivider(
                thickness: 2,
                color: Color(0xff425AD4),
                indent: 7.0,
                endIndent: 7.0,
              ),
              Text(
                '+91 6360270581',
                style: GoogleFonts.inter(
                    color: Color(0xff425AD4),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            height: 50.0,
            width: 300.0,
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: Row(children: [
              Icon(
                Icons.mail,
                color: Color(0xff425AD4),
              ),
              VerticalDivider(
                thickness: 2,
                color: Color(0xff425AD4),
                indent: 7.0,
                endIndent: 7.0,
              ),
              Container(
                width: 220,
                child: Text(
                  'shanky.shashank3678@gmail.com',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    color: Color(0xff425AD4),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
