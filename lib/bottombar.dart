import 'package:crudasignment/contacts.dart';
import 'package:crudasignment/grouppage.dart';
import 'package:crudasignment/recents_page.dart';
import 'package:flutter/material.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  var i = 0;
  var tabs = [recents(), contactspage(), group()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm,
              ),
              label: 'Recents'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt,
              ),
              label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Groups'),
        ],
        currentIndex: i,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
      body: tabs[i],
    );
  }
}
