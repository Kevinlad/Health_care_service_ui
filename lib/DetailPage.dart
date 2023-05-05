import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:health_care/Appointment.dart';
import 'package:health_care/HomeScreen.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.black,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 1, 24, 2),
            Color.fromARGB(255, 2, 37, 5),
            Color.fromARGB(255, 3, 15, 4),
            Color(0xFF388E3C)
          ], end: Alignment.topRight)),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: 70,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Loki Bright",
                        style: TextStyle(fontSize: 25, color: Colors.white60),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Action Plan",
                        style: TextStyle(fontSize: 18, color: Colors.white60),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  child: Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 640.0),
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green[400],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Assign',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70),
                                      ),
                                      Text(
                                        'Diagnostics',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70),
                                      ),
                                      // FloatingActionButton(onPressed: (){},child: Icons,)
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40, left: 90),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AppointMent()));
                                            },
                                            child: CircleAvatar(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                              ),
                                              backgroundColor: Colors.grey[400],
                                            ),
                                          )),
                                      // SizedBox(height: w,)
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 450,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.white70,
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(13.0),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Lab Tests',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                        SizedBox(width: 25),
                                                        CircleAvatar(
                                                          child: Icon(
                                                            Icons.settings,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                          backgroundColor:
                                                              Colors.grey[400],
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              'Full Blood',
                                                              style: TextStyle(
                                                                  fontSize: 15),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              'Test',
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            Text(
                                                              '23:04',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                          .grey[
                                                                      200]),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 30,
                                                        ),
                                                        CircleAvatar(
                                                          child: Icon(
                                                            Icons.file_copy,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                          backgroundColor:
                                                              Colors.grey[400],
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              'Puncture',
                                                              style: TextStyle(
                                                                  fontSize: 15),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              'Test',
                                                              style: TextStyle(
                                                                  fontSize: 30),
                                                            ),
                                                            SizedBox(
                                                              height: 15,
                                                            ),
                                                            Text(
                                                              '23:04',
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                          .grey[
                                                                      200]),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(width: 35),
                                                        CircleAvatar(
                                                          child: Icon(
                                                            Icons.file_copy,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                          backgroundColor:
                                                              Colors.grey[400],
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 100,
                                                      width: 1850,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.grey[400],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50)),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          // mainAxisAlignment:
                                                          //     MainAxisAlignment.spaceAround,
                                                          children: [
                                                            SizedBox(
                                                              height: 30,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          8.0),
                                                              child: Text(
                                                                  'Docs  loading'),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          8.0),
                                                              child: Container(
                                                                height: 20,
                                                                width: 80,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  color: Colors
                                                                          .grey[
                                                                      300],
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    Text('72%'),
                                                                    SizedBox(
                                                                      width: 20,
                                                                    ),
                                                                    Icon(Icons
                                                                        .arrow_downward),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ]),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 650),
                          child: Column(
                            children: [
                              Container(
                                height: 270,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white70,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 35,
                                          ),
                                          Text(
                                            'Dr.Lusia',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white60,
                                            ),
                                            backgroundColor: Colors.grey[400],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 45),
                                        child: Text(
                                          'Monika',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("Full Brain"),
                                      Text("MRI",
                                          style: TextStyle(fontSize: 30)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "21:04",
                                        style: TextStyle(
                                            color: Colors.grey[200],
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 80,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://www.pockethealth.com/wp-content/uploads/2023/02/MRI-Hero_Decoding.png')),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      )

                                      // SizedBox(height: w,)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 270,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white70,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Dr.Lusia',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white60,
                                            ),
                                            backgroundColor: Colors.grey[400],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text(
                                          'Monika',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("Cardiogram"),
                                      Text("Heart",
                                          style: TextStyle(fontSize: 30)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("21:04",
                                          style: TextStyle(
                                              color: Colors.grey[200],
                                              fontSize: 15)),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                        height: 80,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            // color: Colors.purple,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://wallpaperaccess.com/full/1304160.jpg')),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),

                                      // SizedBox(height: w,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
