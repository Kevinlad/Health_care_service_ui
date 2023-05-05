import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:health_care/DetailPage.dart';

class AppointMent extends StatelessWidget {
  const AppointMent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 2, 34, 4),
          Color.fromARGB(255, 8, 39, 11),
          Color.fromARGB(255, 5, 44, 9),
          Color(0xFF388E3C)
        ], end: Alignment.topRight)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // color: Colors.orange,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pond5.com/handsome-smiling-young-man-photo-032270266_iconl_nowm.jpeg'),
                      fit: BoxFit.fitWidth)),
              height: 200,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()));
                          },
                          child: Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(child: Icon(Icons.arrow_back_ios)),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Loki Bright",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.white60),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Male  39",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Treatment Plan',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                        Text(
                          'Destination',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                        // FloatingActionButton(onPressed: (){},child: Icons,)
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 80),
                          child: CircleAvatar(
                            child: Icon(Icons.add),
                          ),
                        ),
                        // SizedBox(height: w,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 22, 17, 17),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pressure ',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                        Text(
                          'Control',
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                        // FloatingActionButton(onPressed: (){},child: Icons,)
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 80),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(Icons.minimize)),
                          ),
                        ),
                        // SizedBox(height: w,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
            ),
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white60,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              'Magnesium',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 200,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white70),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(Icons.add),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                '200',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text('Mg'),
                              SizedBox(
                                height: 30,
                              ),
                              Icon(Icons.minimize_outlined)
                            ],
                          ),
                        )

                        // SizedBox(height: w,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 300,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white60,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              'Melatonin',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 200,
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(35)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(Icons.add),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                '600',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text('Mg'),
                              SizedBox(
                                height: 30,
                              ),
                              Icon(Icons.minimize_outlined)
                            ],
                          ),
                        )

                        // SizedBox(height: w,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text('Save Appointment'),
            ),
          )
        ]),
      ),
    );
  }
}
