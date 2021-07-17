import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailpage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeading(),
              _buildSearch(),
              _buildCatlist(),
              _buildTopMentor()
            ],
          )
        ],
      ),
    );
  }

  _buildTopMentor() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Mentor',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                'See All',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DetailPage()));
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Hero(
                      tag: 'here',
                      child: Container(
                        height: 200,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))),
                      ),
                    ),
                    Positioned(
                      bottom: -60,
                      child: Container(
                        height: 80,
                        width: 145,
                        decoration: BoxDecoration(
                          color: Color(0xff130F0D),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jaylin Vaccaro',
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              'Pschology',
                              style: GoogleFonts.roboto(color: Colors.grey),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rs 25/1 hr',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))),
                  ),
                  Positioned(
                    bottom: -60,
                    child: Container(
                      height: 80,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Color(0xff130F0D),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alon Mac',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            'Dancer',
                            style: GoogleFonts.roboto(color: Colors.grey),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rs 25/1 hr',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Color(0xffD16635),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _buildCatlist() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffD16635),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Health',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffF2EBE6),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Business',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffF2EBE6),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Education',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xffF2EBE6),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  'Startup',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildSearch() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2EBE6),
                    borderRadius: BorderRadius.circular(15)),
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildHeading() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find Best',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Text(
            'mentor',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
