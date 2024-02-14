import 'package:flutter/material.dart';
import 'package:fyp1/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Divider(
              height: 8,
              color: Colors.transparent,
            ),

            // Connections Text
            const Description(desc: 'Connections'),

            const Divider(height: 12),

            // Connections Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                // Find Internet Button
                ConnectionButton(text: "Find Internet"),

                // Sell Internet Button
                ConnectionButton(text: "Sell Internet")
              ],
            ),

            const Divider(
              height: 40,
              color: Colors.transparent,
            ),

            const Description(desc: 'Status'),

            const Divider(
              height: 12,
              color: Colors.transparent,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StatusBar(
                  status_desc: 'You\u0027re connected',
                  status_info: 'Dobie@unifi',
                  widgetColor: Color(0xFFF6F5FB),
                  textColor: primaryText,
                ),
                StatusBar(
                  status_desc: 'Speed:',
                  status_info: '2.4 Gb/s',
                  widgetColor: Color(0xFFFFF4F4),
                  textColor: secondaryText,
                ),
                StatusBar(
                  status_desc: 'Signal Strength:',
                  status_info: 'Good',
                  widgetColor: Color(0xFFF5F9F9),
                  textColor: terText,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class Description extends StatelessWidget {
  final String desc;

  const Description({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          desc,
          style: GoogleFonts.roboto(
            fontSize: 26,
            color: primaryColor,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}

class ConnectionButton extends StatelessWidget {
  final String text;

  const ConnectionButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;

    return Container(
      height: sHeight * 0.085,
      width: sWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF291C6D),
            Color(0xFF7F5689),
            Color(0xFFD994A7),
          ],
        ),
      ),
      child: SizedBox(
        height: sHeight * 0.085,
        width: sWidth * 0.4,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                side: BorderSide(width: 1.0, color: Colors.transparent),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                ),
              ),
            )),
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  final String status_desc;
  final String status_info;
  final widgetColor;
  final textColor;

  const StatusBar({
    super.key,
    required this.status_desc,
    required this.status_info,
    required this.widgetColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        height: sHeight * 0.12,
        width: sWidth * 0.26,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: widgetColor,
              side: BorderSide(width: 0.0, color: Colors.transparent),
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 6,
              ),
              Text(
                textAlign: TextAlign.left,
                status_desc,
                style: GoogleFonts.roboto(
                  fontSize: 11,
                  color: textColor,
                ),
              ),
              Text(
                textAlign: TextAlign.left,
                status_info,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
