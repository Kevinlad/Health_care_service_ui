import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DetailPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 370,
          decoration: BoxDecoration(
              // color: Colors.purple[200],
              gradient: LinearGradient(colors: [
            Color(0xFF9575CD),
            Color(0xFFB39DDB),
            Color(0xFFD1C4E9),
            Color(0xFFEDE7F6),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Dr. Anjenlia',
                  style: GoogleFonts.adamina(
                      textStyle:
                          TextStyle(fontSize: 40, color: Colors.white60)),
                ),
                Text(
                  'Marcus',
                  style: GoogleFonts.adamina(
                      textStyle:
                          TextStyle(fontSize: 40, color: Colors.white60)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Your Patients(9)',
                      style: GoogleFonts.adamina(
                          textStyle:
                              TextStyle(fontSize: 18, color: Colors.white60)),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(
                      Icons.alarm_on_rounded,
                      size: 40,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
                Positioned(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          GestureDetector(
                            child: appointMent(
                                'Kevin Lad',
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
                                'Male 39'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailPage()));
                            },
                          ),
                          appointMent(
                              'Edu Franz',
                              'https://images.pexels.com/photos/5378700/pexels-photo-5378700.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                              'Male 35'),
                          appointMent(
                              'Luffy Brge',
                              'https://images.pexels.com/photos/3454298/pexels-photo-3454298.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                              'Female 39'),
                          appointMent(
                              'Dan taker',
                              'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                              'Male 41'),
                          appointMent(
                              'Lee Sung',
                              'https://iv1.lisimg.com/image/22860779/400full-si--young-lee.jpg',
                              'Female 39'),
                          appointMent(
                              'Jerry Wal',
                              'https://heynoona.com/wp-content/uploads/2021/05/siyoung.jpeg',
                              'Male 39')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appointMent(String name, String image, String gender) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [
              // Color(0xFF9575CD),
              Color(0xFFB39DDB),
              Color(0xFFD1C4E9),
              // Color(0xFFEDE7F6),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(
                          image,
                        ),
                        fit: BoxFit.fitWidth)),
                // child: Image.network(image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.adamina(
                      textStyle:
                          TextStyle(fontSize: 20, color: Colors.white60)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  gender,
                  style: GoogleFonts.adamina(
                      textStyle:
                          TextStyle(fontSize: 15, color: Colors.white60)),
                )
              ],
            ),
            SizedBox(
              width: 110,
            ),
            CircleAvatar(
              radius: 20,
              child: Icon(Icons.edit),
              // backgroundImage: image,
            ),
          ],
        ),
      ),
    );
  }
}
