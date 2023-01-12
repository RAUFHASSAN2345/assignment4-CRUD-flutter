import 'package:flutter/material.dart';

class contactspage extends StatefulWidget {
  const contactspage({super.key});

  @override
  State<contactspage> createState() => _contactspageState();
}

class _contactspageState extends State<contactspage> {
  TextEditingController nam = TextEditingController();
  TextEditingController numb = TextEditingController();
  List contacts = [
    {
      'name': 'Name1',
      'num': '+92 3111111',
    },
    {
      'name': 'Name2',
      'num': '+92 3222222',
    },
    {
      'name': 'Name3',
      'num': '+92 3333333',
    },
    {
      'name': 'Name4',
      'num': '+92 3444444',
    },
    {
      'name': 'Name5',
      'num': '+92 3555555',
    },
    {
      'name': 'Name6',
      'num': '+92 3666666',
    },
    {
      'name': 'Name7',
      'num': '+92 3777777',
    },
    {
      'name': 'Name8',
      'num': '+92 3888888',
    },
    {
      'name': 'Name9',
      'num': '+92 3999999',
    },
    {
      'name': 'Name10',
      'num': '+92 3101010',
    },
    {
      'name': 'Name11',
      'num': '+92 3333111',
    },
    {
      'name': 'Name12',
      'num': '+92 3121212',
    },
    {
      'name': 'Name13',
      'num': '+92 3131313',
    },
    {
      'name': 'Name14',
      'num': '+92 3141414',
    },
    {
      'name': 'Name15',
      'num': '+92 3151515',
    },
    {
      'name': 'Name16',
      'num': '+92 3161616',
    },
    {
      'name': 'Name17',
      'num': '+92 3171717',
    },
    {'name': 'Name18', 'num': '03181818'},
    {
      'name': 'Name19',
      'num': '+92 3191919',
    },
    {
      'name': 'Name20',
      'num': '+92 3202020',
    }
  ];
  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      contacts.add(
        {
          "name": nam.text,
          "num": numb.text,
        },
      );
      nam.clear();
      numb.clear();
    });
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      contacts[index] = {
        "name": nam.text,
        "num": numb.text,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contacts',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '${contacts[index]['name']}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('${contacts[index]['num']}'),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profileimage.webp'),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  'Edit Contact',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: nam,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        labelText: 'Enter Name',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: numb,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        labelText: 'Enter Phone number',
                                      ),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        editContact(context, index);
                                      },
                                      child: Text(
                                        'OK',
                                      ))
                                ],
                              );
                            });
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  'Delete Contact',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                content: Text(
                                    'Are you sure you want to delete this contact?'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          contacts.removeAt(index);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text('OK'))
                                ],
                              );
                            });
                      },
                      icon: Icon(Icons.delete)),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'Add Contact',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: nam,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          labelText: 'Enter Name',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: numb,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          labelText: 'Enter Phone number',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextButton(
                        onPressed: () {
                          addNewContact(context);
                        },
                        child: Text(
                          'OK',
                        ))
                  ],
                );
              });
        },
        child: Text(
          '+',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
