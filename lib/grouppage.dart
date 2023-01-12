import 'package:flutter/material.dart';

class group extends StatefulWidget {
  const group({super.key});

  @override
  State<group> createState() => _groupState();
}

class _groupState extends State<group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Groups',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                contanr(
                    'Family',
                    '16 members',
                    Color.fromARGB(255, 182, 240, 116),
                    Color.fromARGB(255, 3, 58, 5)),
                contanr(
                    'Friends',
                    '24 members',
                    Color.fromARGB(255, 240, 199, 196),
                    Color.fromARGB(255, 111, 13, 6))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30),
              child: Row(
                children: [
                  Container(
                    height: 190,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 144, 197, 240),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color.fromARGB(255, 3, 39, 68),
                                child: Text('+'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'New group',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 3, 39, 68)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 30, left: 30),
              child: Text(
                'Favourites',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Name3',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Row(
                children: [
                  Text('+92 3333333'),
                ],
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profileimage.webp'),
              ),
            ),
            ListTile(
              title: Text(
                'Name6',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Row(
                children: [
                  Text('+92 3666666'),
                ],
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profileimage.webp'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(255, 3, 39, 68),
                    child: Text('+'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add Favourite',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 3, 39, 68)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

contanr(t1, t2, clr, tclr) {
  return Container(
    height: 190,
    width: 170,
    decoration:
        BoxDecoration(color: clr, borderRadius: BorderRadius.circular(30)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10, top: 10),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: tclr,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 90, left: 20, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$t1',
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: tclr),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$t2',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w400, color: tclr),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
