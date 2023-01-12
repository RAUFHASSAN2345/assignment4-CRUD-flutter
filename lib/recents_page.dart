import 'package:flutter/material.dart';

class recents extends StatefulWidget {
  const recents({super.key});

  @override
  State<recents> createState() => _recentsState();
}

class _recentsState extends State<recents> {
  List contact = [
    {
      'name': 'Name1',
      'time': 'Just now',
      'icn': Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 17,
      ),
    },
    {
      'name': 'Name2',
      'time': '5 min ago',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name3',
      'time': '9 min ago',
      'icn': Icon(
        Icons.call,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name4',
      'time': '30 min ago',
      'icn': Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 17,
      ),
    },
    {
      'name': 'Name5',
      'time': '36 min ago',
      'icn': Icon(
        Icons.call,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name6',
      'time': '39 min ago',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name7',
      'time': '40 min ago',
      'icn': Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 17,
      ),
    },
    {
      'name': 'Name8',
      'time': '55 min ago',
      'icn': Icon(
        Icons.call,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name9',
      'time': '1hr ago',
      'icn': Icon(
        Icons.call,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name10',
      'time': '2hrs ago',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name11',
      'time': 'today',
      'icn': Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 17,
      ),
    },
    {
      'name': 'Name12',
      'time': 'today',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name13',
      'time': 'yesterday',
      'icn': Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 17,
      ),
    },
    {
      'name': 'Name14',
      'time': 'yesterday',
      'icn': Icon(
        Icons.call,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name15',
      'time': 'yesterday',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
    {
      'name': 'Name16',
      'time': 'yesterday',
      'icn': Icon(
        Icons.call_made,
        color: Colors.green,
        size: 17,
      ),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Recents',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '${contact[index]['name']}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Row(
                    children: [
                      Text('${contact[index]['time']}'),
                      contact[index]['icn']
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          contact.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete)),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profileimage.webp'),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            );
          }),
    );
  }
}
