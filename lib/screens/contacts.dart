import 'package:flutter/material.dart';
import 'package:hello/models/user.dart';
import 'package:hello/screens/conversation.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> testContacts = [
      User("ajens", 'https://picsum.photos/250?image=1'),
      User("bjens", 'https://picsum.photos/250?image=2'),
      User("cjens", 'https://picsum.photos/250?image=3'),
      User("djens", 'https://picsum.photos/250?image=4'),
      User("ejens", 'https://picsum.photos/250?image=5'),
      User("fjens", 'https://picsum.photos/250?image=6'),
      User("gjens", 'https://picsum.photos/250?image=7'),
      User("hjens", 'https://picsum.photos/250?image=8'),
      User("ijens", 'https://picsum.photos/250?image=9'),
      User("jjens", 'https://picsum.photos/250?image=10'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Search',
            ),
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) => ListTile(
                    title: Text('${testContacts[index].username}'),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('${testContacts[index].imageUrl}'),
                    ),
                    onTap: () => {
                          Navigator.pushNamed(context, 'conversation',
                              arguments: testContacts[index])
                        }),
                itemCount: testContacts.length),
          ),
        ],
      ),
    );
  }
}
